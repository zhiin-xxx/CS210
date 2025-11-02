#ifndef SRC_MEMORY_H
#define SRC_MEMORY_H

#include <elfio/elfio.hpp>
#include <span>
#include <vector>

#include "byte_addressable.h"

class Memory final : public ByteAddressable {
  std::vector<uint8_t> arena_;
  uint32_t time_;
  void CheckAddr(uint32_t addr, std::size_t len) const;
  void ReadSpan(uint32_t addr, std::span<uint8_t> out,uint32_t* time) override;
  void WriteSpan(uint32_t addr, std::span<const uint8_t> in,uint32_t* time) override;
public:
    // statistics counters
    uint64_t stat_total_accesses = 0;   // 读/写 总访问（每次 ReadSpan/WriteSpan 调用可计一次）
    uint64_t stat_read_accesses = 0;
    uint64_t stat_write_accesses = 0;
    uint64_t stat_hits = 0;
    uint64_t stat_misses = 0;
    uint64_t stat_evictions = 0;        // 被替换的行数
    uint64_t stat_writebacks = 0;       // dirty 行写回次数
    uint64_t stat_demotions = 0;        // demote 发生次数
 public:
  explicit Memory(std::size_t size,uint32_t time) : arena_(size, 0),time_(time) {}
};

#endif
