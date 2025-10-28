#include "cache.h"
AddrParts CacheLevel::DecodeAddress(uint32_t addr) {
    AddrParts parts;
    parts.offset = addr % config_.line_size;
    size_t num_sets = config_.size / (config_.line_size * config_.associativity);
    parts.index = (addr / config_.line_size) % num_sets;
    parts.tag = addr / (config_.line_size * num_sets);
    parts.line_addr = addr - parts .offset; //cacheline的起始地址
    return parts;
}
uint32_t CacheLevel::DecodeAddress(const CacheLine& line,const AddrParts parts) {
    uint32_t addr;
    size_t num_sets = config_.size / (config_.line_size * config_.associativity);
    addr = (line.tag * num_sets + parts.index) * config_.line_size;
    return addr;
}

void CacheLevel::CommonLoad(CacheLine& line,const AddrParts& parts){
    lower_->ReadSpan( parts.line_addr, std::span<uint8_t>(line.data.data(), config_.line_size));
    if(inclusion_policy_ == InclusionPolicy::Exclusive){//独占
        //？如何在这里确定是从cache中读取的数据还是从memory中读取的数据
        if (auto* child = dynamic_cast<CacheLevel*>(lower_.get())) {
            // lower_ 是 cache，清除对应行
            child->ClearFromLine(parts.line_addr);
        }
        // lower_ 是 memory，则什么都不做
    }
    line.lru_counter=1; //更新LRU计数器
    line.valid=true;
    line.tag=parts.tag;
}
void CacheLevel::LoadForRead(CacheLine& line,const AddrParts& parts, uint8_t* out, size_t len){
    CommonLoad(line,parts);
    std::memcpy(out, line.data.data() + parts.offset, len);
    line.dirty=false;

}

void CacheLevel::LoadForWrite(CacheLine& line,const AddrParts& parts,const uint8_t* in, size_t len){
    CommonLoad(line,parts);
    std::memcpy( line.data.data() + parts.offset,in, len);
    line.dirty=true;

}

CacheLine& CacheLevel::Replacement(const AddrParts& parts){
    size_t victim_index = 0;
     switch(config_.replacement_policy){
        case ReplacementPolicy::LRU:{
            for(size_t i=1;i<config_.associativity;i++){
                if(sets[parts.index].lines[i].lru_counter<sets[parts.index].lines[victim_index].lru_counter){
                    victim_index=i;
                }
            }
            CacheLine& line = sets[parts.index].lines[victim_index];
            if(line.dirty){
                //写回下一级存储器WB--要写回的块是选中的这一行
                // 被替换行的原始地址 = (旧tag << index_bits) | 当前index
            uint32_t old_line_addr=DecodeAddress(line,parts);
            lower_->WriteSpan( old_line_addr,
                                  std::span<const uint8_t>(line.data.data(), config_.line_size));}
            return line;

        }
        case ReplacementPolicy::Random:{
            //随机替换一行
            victim_index = rand() % config_.associativity;
            CacheLine& line = sets[parts.index].lines[victim_index];
            if(line.dirty){
                //写回下一级存储器WB--要写回的块是选中的这一行
                // 被替换行的原始地址 = (旧tag << index_bits) | 当前index
            uint32_t old_line_addr=DecodeAddress(line,parts);
            lower_->WriteSpan( old_line_addr,
                                  std::span<const uint8_t>(line.data.data(), config_.line_size));}
            return line;
        }
        default:
            throw std::runtime_error("Unknown replacement policy");
    }
}
void CacheLevel::ReadFromCacheLine(const AddrParts& parts, uint8_t* out, size_t len) {
    for(size_t i=0;i<config_.associativity;i++){
         CacheLine& line = sets[parts.index].lines[i];
        if(line.valid && line.tag == parts.tag){
            //cache命中
            std::memcpy(out, line.data.data() + parts.offset, len);
            line.lru_counter++; //更新LRU计数器
            return;
        }
    }
    //cache未命中(mem会走自己的函数)
    if(lower_ == nullptr){
        throw std::runtime_error("No lower level memory to read from");
    }
    for(size_t i=0;i<config_.associativity;i++){
         CacheLine& line = sets[parts.index].lines[i];
        if(!line.valid){//找到空位
            LoadForRead(line, parts, out, len);
            return;
        }
    }
    //不存在空位了，进行替换
    CacheLine& line=Replacement(parts);
    LoadForRead(line, parts, out, len);
    return;

}

void CacheLevel::ClearFromLine(uint32_t addr) {//如果都是独占的话，下层在取到数据的时候一定会把下下层数据清除，
                                                // 因此不需要再向下清除
    AddrParts parts = DecodeAddress(addr);
    for(size_t i=0;i<config_.associativity;i++){
        CacheLine& line = sets[parts.index].lines[i];
        if(line.valid && line.tag == parts.tag){
            line.valid=false;
            line.dirty=false;
            line.tag=0;
            line.lru_counter=0;
            return;
        }
    }
}

void CacheLevel::ReadSpan(uint32_t addr, std::span<uint8_t> out) {
  size_t bytes_read = 0; //已经读取的数量
    while (bytes_read < out.size()) {
        uint32_t curr_addr = addr + bytes_read; //此次开始读取的地址
        AddrParts parts = DecodeAddress(curr_addr);
        //在这一行cache line中的数据
        size_t bytes_in_line = std::min(out.size() - bytes_read, config_.line_size - parts.offset);
        ReadFromCacheLine(parts, out.data() + bytes_read, bytes_in_line);
        bytes_read += bytes_in_line;
    }
}

void CacheLevel::WriteFromCacheLine(const AddrParts& parts,const uint8_t* in, size_t len) {
    for(size_t i=0;i<config_.associativity;i++){
        CacheLine& line = sets[parts.index].lines[i];
        if(line.valid && line.tag == parts.tag){ //cache命中 WB
            line.dirty=true;
            line.lru_counter++; //更新LRU计数器
            std::memcpy( line.data.data() + parts.offset,in, len);
            return;
        }
    }
    //写未命中 WA
     for(size_t i=0;i<config_.associativity;i++){
        CacheLine& line = sets[parts.index].lines[i];
        //从下一级存储器中读取这一行 
        if(!line.valid){//发现了一个空行
            LoadForWrite(line, parts, in, len);
            return;
        }
    }
    //没有空位了，进行替换
    CacheLine& line=Replacement(parts);
    LoadForWrite(line, parts, in, len);
    return;
}
void CacheLevel::WriteSpan(uint32_t addr, std::span<const uint8_t> in) {
  size_t bytes_write = 0; //已经写入的数量
    while (bytes_write < in.size()) {
        uint32_t curr_addr = addr + bytes_write; //此次开始写入的地址
        AddrParts parts = DecodeAddress(curr_addr);
        //在这一行cache line中的数据
        size_t bytes_in_line = std::min(in.size() - bytes_write, config_.line_size - parts.offset);
        WriteFromCacheLine(parts, in.data() + bytes_write, bytes_in_line);
        bytes_write += bytes_in_line;
    }
}
