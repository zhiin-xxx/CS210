#ifndef SRC_CACHE_H
#define SRC_CACHE_H
#include <cstdint>
#include <vector>
#include "byte_addressable.h"
#include "options.h"
#include <memory>
#include <fmt/core.h>
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
    CacheLevelConfig config_;     // line size, associativity, replacement policy, write policy, etc.
    WritePolicy write_policy_ ;
    InclusionPolicy  inclusion_policy_ ;
    bool enable_latency_;
    bool enable_trace_;
    uint32_t time_;
    FILE* fp_ ;  
public:
    // statistics counters
    std::unique_ptr<ByteAddressable> lower_; 
    std::string cache_level_;
    uint64_t stat_total_accesses = 0;   // 读/写 总访问（每次 ReadSpan/WriteSpan 调用可计一次）
    uint64_t stat_read_accesses = 0;
    uint64_t stat_write_accesses = 0;
    uint64_t stat_hits = 0;
    uint64_t stat_misses = 0;
    uint64_t stat_evictions = 0;        // 被替换的行数
    uint64_t stat_writebacks = 0;       // dirty 行写回次数
    uint64_t stat_demotions = 0;        // demote 发生次数
public:
    CacheLevel(std::unique_ptr<ByteAddressable> lower, CacheLevelConfig cfg,WritePolicy wp,InclusionPolicy ip,uint32_t time,bool enable_latency,bool enable_trace,std::string cache_level,FILE* fp)
    :lower_(std::move(lower)), config_(cfg),write_policy_(wp),inclusion_policy_(ip),time_(time),enable_latency_(enable_latency),enable_trace_(enable_trace),cache_level_(cache_level),fp_(fp)
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
    bool ReadFromCacheLine(const AddrParts& parts, uint8_t* out, size_t len,uint32_t* time);
    bool WriteFromCacheLine(const AddrParts& parts, const uint8_t* in, size_t len,uint32_t* time);
    void ReadSpan(uint32_t addr, std::span<uint8_t> out,uint32_t* time) override;
    void WriteSpan(uint32_t addr, std::span<const uint8_t> in,uint32_t* time) override;
    void ClearFromLine(uint32_t addr,size_t len);
    bool CommonLoad(CacheLine& line,const AddrParts& parts,uint32_t* time);
    bool LoadForRead(CacheLine& line,const AddrParts& parts, uint8_t* out, size_t len,uint32_t* time);
    bool LoadForWrite(CacheLine& line,const AddrParts& parts,const uint8_t* in, size_t len,uint32_t* time);
    std::pair<CacheLine&,bool> Replacement(const AddrParts& parts,uint32_t* time);
    uint32_t DecodeAddress(const CacheLine& line,const AddrParts parts);
    void DemoteLine(uint32_t addr);
    void CopyLineToLower(const AddrParts& parts,const uint8_t* in, size_t len);
    void MoveSpan(uint32_t addr, std::span<const uint8_t> in);
    bool LowerSuccessful(const ByteAddressable* lower);
};

#endif
