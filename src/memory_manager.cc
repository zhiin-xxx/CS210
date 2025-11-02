#include "memory_manager.h"

#include "memory.h"

MemoryManager::MemoryManager(const Options& opts)
  :time_((uint32_t*)malloc(sizeof(uint32_t)))
 {
    *time_=0;
    FILE* fp = fopen("cache.trace", "a");  
    auto mem = std::make_unique<Memory>(opts.memory_size,opts.memory_latency);
    memory_ = mem.get(); // 保存裸指针
    std::unique_ptr<ByteAddressable> lower = std::move(mem);
    if (opts.enable_cache) {
      int level_id = static_cast<int>(opts.cache_levels.size()); // 从最大层号开始
        for (auto it = opts.cache_levels.rbegin(); it != opts.cache_levels.rend(); ++it,--level_id) {
          std::string cache_name = "L" + std::to_string(level_id);  
          // 构建当前 cache，ownership 转移给新的 unique_ptr
            lower = std::make_unique<CacheLevel>(std::move(lower),
                                                 *it,
                                                 opts.write_policy,
                                                 opts.inclusion_policy,
                                                 it->latency,
                                                opts.enable_latency,
                                                opts.enable_trace,
                                                cache_name,
                                                fp);
        }
    }

    // backend_ 拥有最顶层 cache（或者直接 memory）
    backend_ = std::move(lower);
}

void MemoryManager::CopyFrom(const void* src, uint32_t dest, uint32_t len,LATENCY_TYPE type) {
  std::span<const uint8_t> data(reinterpret_cast<const uint8_t*>(src), len);
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->WriteSpan(dest, data,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->WriteSpan(dest, data,nullptr);
          break;
  }
}

void MemoryManager::SetByte(uint32_t addr, uint8_t val,LATENCY_TYPE type) {
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Write(addr, val,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Write(addr, val,nullptr);
          break;
  }
}
void MemoryManager::SetByteDirect(uint32_t addr, uint8_t val) {
  memory_->Write<unsigned char>(addr, val,nullptr);
  
}
void MemoryManager::SetShort(uint32_t addr,uint16_t val,LATENCY_TYPE type) {
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Write(addr, val,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Write(addr, val,nullptr);
          break;
  }

}

void MemoryManager::SetInt(uint32_t addr, uint32_t val,LATENCY_TYPE type) {
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Write(addr, val,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Write(addr, val,nullptr);
          break;
  }
}

void MemoryManager::SetLong(uint32_t addr, uint64_t val,LATENCY_TYPE type) {
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Write(addr, val,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Write(addr, val,nullptr);
          break;
  }
}

uint8_t MemoryManager::GetByte(uint32_t addr,LATENCY_TYPE type) const {
  uint8_t value{};
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Read(addr, value,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Read(addr, value,nullptr);
          break;
  }
  return value;
}

uint16_t MemoryManager::GetShort(uint32_t addr,LATENCY_TYPE type) const {
  uint16_t value{};
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Read(addr, value,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Read(addr, value,nullptr);
          break;
  }
  return value;
}

uint32_t MemoryManager::GetInt(uint32_t addr,LATENCY_TYPE type) const {
  uint32_t value{};
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Read(addr, value,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Read(addr, value,nullptr);
          break;
  }
  return value;
}

uint64_t MemoryManager::GetLong(uint32_t addr,LATENCY_TYPE type) const {
  uint64_t value{};
  switch(type){
    case LATENCY_TYPE::MEM:
          backend_->Read(addr, value,time_);
          break;
    case LATENCY_TYPE::FETCH:
          backend_->Read(addr, value,nullptr);
          break;
  }
  return value;
}

void MemoryManager::CLDemote(uint32_t addr){
  if (auto* child = dynamic_cast<CacheLevel*>(backend_.get())) {
    child->DemoteLine(addr);
  }
  else printf("no cache set\n");
  return;
}

void MemoryManager::PrintStats() const {
    const ByteAddressable* current = backend_.get();
    int level = 1;

    printf("=== Cache/Memory Hierarchy Statistics ===\n");

    while (current) {
        // 判断当前层是否是 CacheLevel
        if (auto cache = dynamic_cast<const CacheLevel*>(current)) {
            printf("Level %d: %s\n", level, cache->cache_level_.c_str());
            printf("  Total Accesses: %lu\n", cache->stat_total_accesses);
            printf("  Read Accesses : %lu\n", cache->stat_read_accesses);
            printf("  Write Accesses: %lu\n", cache->stat_write_accesses);
            printf("  Hits          : %lu\n", cache->stat_hits);
            printf("  Misses        : %lu\n", cache->stat_misses);
            printf("  Evictions     : %lu\n", cache->stat_evictions);
            printf("  Writebacks    : %lu\n", cache->stat_writebacks);
            printf("  Demotions     : %lu\n", cache->stat_demotions);

            current = cache->lower_.get(); // 进入下一层
        } else if (auto mem = dynamic_cast<const Memory*>(current)) {
            printf("Level %d: Memory\n", level);
            printf("  Total Accesses: %lu\n", mem->stat_total_accesses);
            printf("  Read Accesses : %lu\n", mem->stat_read_accesses);
            printf("  Write Accesses: %lu\n", mem->stat_write_accesses);
            printf("  Hits          : %lu\n", mem->stat_hits); // memory hits一般可以忽略
            printf("  Misses        : %lu\n", mem->stat_misses); // memory miss一般为0
            printf("  Evictions     : %lu\n", mem->stat_evictions);
            printf("  Writebacks    : %lu\n", mem->stat_writebacks);
            printf("  Demotions     : %lu\n", mem->stat_demotions);

            current = nullptr; // memory 是最后一层
        } else {
            // 其他情况
            printf("Level %d: Unknown layer\n", level);
            current = nullptr;
        }
        level++;
    }

    printf("========================================\n");
}
