#include "cache.h"
#define TRACE_PRINT_STR(fp, enable, s) \
  do { if ((enable) && (fp)) { std::string __tmp = (s); fprintf((fp), "%s", __tmp.c_str()); fflush(fp); } } while (0)

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
void CacheLevel::DemoteLine(uint32_t addr){
    AddrParts parts=DecodeAddress(addr);//先找到我所在的组
    CacheLine line;
    for(size_t i=0;i<config_.associativity;i++){
        line = sets[parts.index].lines[i];
        if(line.valid && line.tag == parts.tag){
            if(auto* lower_cache = dynamic_cast<CacheLevel*>(lower_.get())){
                    // lower_ 是 cache，拷贝这一行,,,有个问题 如果两级cache的line大小不一致？？
                lower_cache->MoveSpan( parts.line_addr,
                                        std::span<const uint8_t>(line.data.data(), config_.line_size));
            //cache的降级写回和写入数据操作完全不同;写入数据操作会触发对于数据的修改;而降级写回是不应该对数据进行修改的
                //这里的clear下层可能是没有数据的
                ClearFromLine(parts.line_addr,config_.line_size);
                stat_demotions++;
                TRACE_PRINT_STR(fp_, enable_trace_, 
                    fmt::format("{} DEMOTE ADDR= {:#x}\n", this->cache_level_, addr));
                return;
            }
            else{
                //下一级是mem
                return;
            }
        }
    }//找到所在的line
}

bool CacheLevel::LowerSuccessful(const ByteAddressable* lower) {
    while (lower) {
        if (!lower->flag)
            return false;

        // 只有 CacheLevel 才有下层
        auto cache = dynamic_cast<const CacheLevel*>(lower);
        if (!cache)  // 说明到了 Memory 或其他非缓存层
            break;

        lower = cache->lower_.get();  // 向下继续
    }
    return true;
}

bool CacheLevel::CommonLoad(CacheLine& line,const AddrParts& parts,uint32_t* time){
    //ReadSpan是考虑到了跨行的情况，这里不需要考虑跨行
    lower_->ReadSpan( parts.line_addr, std::span<uint8_t>(line.data.data(), config_.line_size),time);
    //!注意下层有可能失败（正在等待中）只有当相邻层失败的时候flag为false
    //只有在前面所有层都成功的前提下，这里才算Load成功
    if(!LowerSuccessful(lower_.get())) {
        // printf("lower_ working\n");
        return false;
    }
    if(inclusion_policy_ == InclusionPolicy::Exclusive){//独占
        //？如何在这里确定是从cache中读取的数据还是从memory中读取的数据
        if (auto* child = dynamic_cast<CacheLevel*>(lower_.get())) {
            // lower_ 是 cache，清除对应行----如果两级cache的line大小不一致呢？
            child->ClearFromLine(parts.line_addr,config_.line_size);
        }//这种情况下的Clear是在下层一定有数据的情况下
        // lower_ 是 memory，则什么都不做
    }
    line.lru_counter=1; //更新LRU计数器
    line.valid=true;
    line.tag=parts.tag;
    return true;
}
bool  CacheLevel::LoadForRead(CacheLine& line,const AddrParts& parts, uint8_t* out, size_t len,uint32_t* time){
    if(!CommonLoad(line,parts,time)) {
        // int i=0;
        // printf("lower_ working\n");
        return false;
    }
    std::memcpy(out, line.data.data() + parts.offset, len);
    line.dirty=false;
    return true;
}
//inclusive/exclusive
bool CacheLevel::LoadForWrite(CacheLine& line,const AddrParts& parts,const uint8_t* in, size_t len,uint32_t* time){
    if(!CommonLoad(line,parts,time)) {
        // int i=0;
        // printf("lower_ working\n");
        return false;
    }
    std::memcpy( line.data.data() + parts.offset,in, len); //这里默认了取出的len一定小于一行的大小
    line.dirty=true;
    return true;
}

std::pair<CacheLine&,bool> CacheLevel::Replacement(const AddrParts& parts,uint32_t* time){
    size_t victim_index = 0;
     switch(config_.replacement_policy){
        case ReplacementPolicy::LRU:{
            for(size_t i=1;i<config_.associativity;i++){
                if(sets[parts.index].lines[i].lru_counter<sets[parts.index].lines[victim_index].lru_counter){
                    victim_index=i;
                }
            }
            CacheLine& line = sets[parts.index].lines[victim_index];
            uint32_t old_line_addr;
            if(line.dirty){
                stat_writebacks++; // 计数写回
                //写回下一级存储器WB--要写回的块是选中的这一行
                // 被替换行的原始地址 = (旧tag << index_bits) | 当前index
                old_line_addr=DecodeAddress(line,parts);
                lower_->WriteSpan( old_line_addr
                    ,std::span<const uint8_t>(line.data.data(), config_.line_size),time);
                TRACE_PRINT_STR(fp_, enable_trace_, 
                    fmt::format("{} EVICT ADDR= {:#x} DIRTY\n", this->cache_level_, old_line_addr));
                if(LowerSuccessful(lower_.get())==false) {
                    // int i=0;
                    // printf("lower_ working\n");
                    return {line,false};
                }
            }
            line.valid=false;
            line.dirty=false;
            line.tag=0;
            line.lru_counter=0;
            stat_evictions++; // 被替换计数
            TRACE_PRINT_STR(fp_, enable_trace_, 
                fmt::format("{} EVICT COMPLETE ADDR= {:#x}\n", this->cache_level_, old_line_addr));

            return {line,true};

        }
        case ReplacementPolicy::Random:{
            //随机替换一行
            stat_writebacks++; // 计数写回
            uint32_t old_line_addr;
            victim_index = rand() % config_.associativity;
            CacheLine& line = sets[parts.index].lines[victim_index];
            if(line.dirty){
                //写回下一级存储器WB--要写回的块是选中的这一行
                // 被替换行的原始地址 = (旧tag << index_bits) | 当前index
            old_line_addr=DecodeAddress(line,parts);
            TRACE_PRINT_STR(fp_, enable_trace_, 
                fmt::format("{} EVICT ADDR= {:#x} DIRTY\n", this->cache_level_, old_line_addr));
            lower_->WriteSpan( old_line_addr,
                                  std::span<const uint8_t>(line.data.data(), config_.line_size),time);
             if(LowerSuccessful(lower_.get())==false) {
                // printf("lower_ working\n");
                return {line,false};
             }
            }
            line.valid=false;
            line.dirty=false;
            line.tag=0;
            line.lru_counter=0;
            stat_evictions++; // 被替换计数
            TRACE_PRINT_STR(fp_, enable_trace_,
                 fmt::format("{} EVICT COMPLETE ADDR= {:#x}\n", this->cache_level_, old_line_addr));
            return {line,true};
        }
        default:
            throw std::runtime_error("Unknown replacement policy");
    }
}
bool CacheLevel::ReadFromCacheLine(const AddrParts& parts, uint8_t* out, size_t len,uint32_t* time) {
    stat_total_accesses++;
    stat_read_accesses++;
    if(enable_latency_){
        if(time && flag && LowerSuccessful(lower_.get())){ //这个地方需要注意：当cache等待完毕，第二次成功访存后进入mem，当mem等待完毕后再次访存，flag为true导致死循环
            *time+=time_;
            flag=false;
            // printf("ReadFromCacheLine time:%d\n",*time);
            // printf("flag=false in ReadFromCacheLine ,parts.line_addr:%p, cachelevel:%p\n",parts.line_addr,this);
            return false;
        }
        if(time && !flag) {
            // printf("flag=true in ReadFromCacheLine ,parts.line_addr:%p, cachelevel:%p\n",parts.line_addr,this);
            flag=true;
        }
    }
    for(size_t i=0;i<config_.associativity;i++){
         CacheLine& line = sets[parts.index].lines[i];
        if(line.valid && line.tag == parts.tag){
            //cache命中
            std::memcpy(out, line.data.data() + parts.offset, len);
            line.lru_counter++; //更新LRU计数器
            stat_hits++;
            TRACE_PRINT_STR(fp_, enable_trace_,
                 fmt::format("{} HIT ADDR= {:#x}\n", this->cache_level_, parts.line_addr));
            return true;
        }
    }
    stat_misses++;
     TRACE_PRINT_STR(fp_, enable_trace_, 
                fmt::format("{} MISS ADDR= {:#x}\n", this->cache_level_, parts.line_addr));
    //cache未命中(mem会走自己的函数)
    if(lower_ == nullptr){
        throw std::runtime_error("No lower level memory to read from");
    }
    for(size_t i=0;i<config_.associativity;i++){
         CacheLine& line = sets[parts.index].lines[i];
        if(!line.valid){//找到空位
            if(!LoadForRead(line, parts, out, len,time)) return false;
            return true;
        }
    }
    //不存在空位了，进行替换
    std::pair<CacheLine&,bool> ret=Replacement(parts,time);
    if(!ret.second) return false;//下层正在进行替换写回
    CacheLine& line=ret.first;
    if(!LoadForRead(line, parts, out, len,time)) return false;
    return true;

}

void CacheLevel::ClearFromLine(uint32_t addr,size_t len) {//如果都是独占的话，下层在取到数据的时候一定会把下下层数据清除，
                                                // 因此不需要再向下清除
                                                //但是这里必须考虑跨行的问题
    size_t bytes_read = 0; //已经清除的数量
    while (bytes_read < len) {
        uint32_t curr_addr = addr + bytes_read; //此次开始清除的地址
        AddrParts parts = DecodeAddress(curr_addr);
        //在这一行cache line中的数据
        size_t bytes_in_line = std::min(len - bytes_read, config_.line_size - parts.offset);
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
        bytes_read += bytes_in_line;
    }
}


void CacheLevel::ReadSpan(uint32_t addr, std::span<uint8_t> out,uint32_t* time) {
    size_t bytes_read = 0; //已经读取的数量
    while (bytes_read < out.size()) {
        uint32_t curr_addr = addr + bytes_read; //此次开始读取的地址
        AddrParts parts = DecodeAddress(curr_addr);
        //在这一行cache line中的数据
        size_t bytes_in_line = std::min(out.size() - bytes_read, config_.line_size - parts.offset);
        if(!ReadFromCacheLine(parts, out.data() + bytes_read, bytes_in_line,time)) {
            return;
        }
        bytes_read += bytes_in_line;
    }
}

bool CacheLevel::WriteFromCacheLine(const AddrParts& parts,const uint8_t* in, size_t len,uint32_t* time) {
    stat_total_accesses++;
    stat_write_accesses++;
    if(enable_latency_){
        if(time && flag && LowerSuccessful(lower_.get())){
            *time+=time_;
            flag=false;
            // printf("flag=false in WriteFromCacheLine ,parts.line_addr:%p, cachelevel:%p\n",parts.line_addr,this);
            return false;
        }
        if(time && !flag) {
            // printf("flag=true in WriteFromCacheLine ,parts.line_addr:%p, cachelevel:%p\n",parts.line_addr,this);
            flag=true;
        }
    }
    for(size_t i=0;i<config_.associativity;i++){
        CacheLine& line = sets[parts.index].lines[i];
        if(line.valid && line.tag == parts.tag){ //cache命中 WB
            line.dirty=true;
            line.lru_counter++; //更新LRU计数器
            std::memcpy( line.data.data() + parts.offset,in, len);
            stat_hits++;
            TRACE_PRINT_STR(fp_, enable_trace_,
                fmt::format("{} HIT WRITE ADDR= {:#x}\n", this->cache_level_, parts.line_addr));
            return true;
        }
    }
    stat_misses++;
    TRACE_PRINT_STR(fp_, enable_trace_, 
        fmt::format("{} MISS WRITE ADDR= {:#x}\n", this->cache_level_, parts.line_addr));
        //写未命中 WA
    for(size_t i=0;i<config_.associativity;i++){
        CacheLine& line = sets[parts.index].lines[i];
        //从下一级存储器中读取这一行 --inclusive/exclusive
        if(!line.valid){//发现了一个空行
            if(!LoadForWrite(line, parts, in, len,time)) return false;
            return true;
        }
    }
    //没有空位了，进行替换
    std::pair<CacheLine&,bool> ret=Replacement(parts,time);
    if(!ret.second) return false;//下层正在进行替换写回
    CacheLine& line=ret.first; //这个地方如果是由于下层的失败会导致line的丢失
    if(!LoadForWrite(line, parts, in, len,time)) return false;
    return true;
}

void CacheLevel::CopyLineToLower(const AddrParts& parts,const uint8_t* in, size_t len) {
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
        if(!line.valid){//发现了一个空行
            std::memcpy( line.data.data() + parts.offset,in, len); //这里默认了取出的len一定小于一行的大小
            line.dirty=true;
            line.lru_counter=1; //更新LRU计数器
            line.valid=true;
            line.tag=parts.tag;
            return;
        }
    }
    //没有空位了，进行替换
    uint32_t* tmp=nullptr;
    CacheLine& line=Replacement(parts,tmp).first; //这个地方不会对时钟造成影响
    std::memcpy( line.data.data() + parts.offset,in, len); //这里默认了取出的len一定小于一行的大小
    line.dirty=true;
    line.lru_counter=1; //更新LRU计数器
    line.valid=true;
    line.tag=parts.tag;
    return;
}
void CacheLevel::WriteSpan(uint32_t addr, std::span<const uint8_t> in,uint32_t* time) {
  size_t bytes_write = 0; //已经写入的数量
    while (bytes_write < in.size()) {
        uint32_t curr_addr = addr + bytes_write; //此次开始写入的地址
        AddrParts parts = DecodeAddress(curr_addr);
        //在这一行cache line中的数据
        size_t bytes_in_line = std::min(in.size() - bytes_write, config_.line_size - parts.offset);
        if(!WriteFromCacheLine(parts, in.data() + bytes_write, bytes_in_line,time)) return;
        bytes_write += bytes_in_line;
    }
}

void CacheLevel::MoveSpan(uint32_t addr, std::span<const uint8_t> in) {
    size_t bytes_write = 0; //已经写入的数量
    while (bytes_write < in.size()) {
        uint32_t curr_addr = addr + bytes_write; //此次开始写入的地址
        AddrParts parts = DecodeAddress(curr_addr);
        //在这一行cache line中的数据
        size_t bytes_in_line = std::min(in.size() - bytes_write, config_.line_size - parts.offset);
        CopyLineToLower(parts, in.data() + bytes_write, bytes_in_line);
        bytes_write += bytes_in_line;
    }
}


