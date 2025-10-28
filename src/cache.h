#ifndef SRC_CACHE_H
#define SRC_CACHE_H
#include <cstdint>
#include <vector>
#include "byte_addressable.h"
#include "options.h"
#include <memory>
// TODO:
// Implement your cache class and cache-memory hierarchy
// Then integrate them into MemoryManager as its backend_
struct CacheLine {
    bool valid = false;
    bool dirty = false;
    uint32_t tag = 0;
    std::vector<uint8_t> data; // size = line_size
    // 替换策略元数据，例如 LRU 次序
    std::size_t lru_counter = 0;
};
struct CacheSet {
    std::vector<CacheLine> lines; // size = associativity
};
//cache的属性设置
//options.h中

// enum class WritePolicy { WBWA };
// enum class InclusionPolicy { Inclusive, Exclusive };
// enum class ReplacementPolicy { LRU, Random };

// // configuration for a single cache level
// struct CacheLevelConfig {
//   std::size_t size{32 * 1024};   // total cache size (bytes)
//   std::size_t associativity{4};  // n-way associative
//   std::size_t line_size{64};     // cache line size
//   uint32_t latency{4};           // access latency (cycles)
//   ReplacementPolicy replacement_policy{ReplacementPolicy::LRU};
// };
//   // cache configuration (global shared policies)
//   bool enable_cache = false;
//   WritePolicy write_policy = WritePolicy::WBWA;
//   InclusionPolicy   = InclusionPolicy::Inclusive;
//   std::vector<CacheLevelConfig> cache_levels;

//   // latency simulation
//   bool enable_latency = false;
//   uint32_t memory_latency = 100;  // plain memory access latency

//   // trace options
//   bool enable_trace = false;
//   std::string trace_output_file;
struct AddrParts {
    uint32_t tag;
    uint32_t index;
    uint32_t offset;
    uint32_t line_addr;
};
enum class AccessType { READ, CLEAR };

class CacheLevel : public ByteAddressable {
    std::vector<CacheSet> sets;
    std::unique_ptr<ByteAddressable> lower_; 
    CacheLevelConfig config_;     // line size, associativity, replacement policy, write policy, etc.
    WritePolicy write_policy_ ;
    InclusionPolicy  inclusion_policy_ ;
public:
    CacheLevel(std::unique_ptr<ByteAddressable> lower, CacheLevelConfig cfg,WritePolicy wp,InclusionPolicy ip)
    :lower_(std::move(lower)), config_(cfg),write_policy_(wp),inclusion_policy_(ip)
    {
        std::size_t num_lines = config_.size / config_.line_size;
        std::size_t num_sets = num_lines / config_.associativity;
        sets.resize(num_sets);
        for (auto& set : sets) {
            set.lines.resize(config_.associativity);
            for (auto& line : set.lines) {
                line.data.resize(config_.line_size);
            }
        }
    }
    AddrParts DecodeAddress(uint32_t addr);
    void ReadFromCacheLine(const AddrParts& parts, uint8_t* out, size_t len);
    void WriteFromCacheLine(const AddrParts& parts, const uint8_t* in, size_t len);
    void ReadSpan(uint32_t addr, std::span<uint8_t> out) override;
    void WriteSpan(uint32_t addr, std::span<const uint8_t> in) override;
    void ClearFromLine(uint32_t addr);
    void CommonLoad(CacheLine& line,const AddrParts& parts);
    void LoadForRead(CacheLine& line,const AddrParts& parts, uint8_t* out, size_t len);
    void LoadForWrite(CacheLine& line,const AddrParts& parts,const uint8_t* in, size_t len);
    CacheLine& Replacement(const AddrParts& parts);
    uint32_t DecodeAddress(const CacheLine& line,const AddrParts parts);
};
#endif
