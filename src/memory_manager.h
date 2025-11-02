#ifndef SRC_MEMORY_MANAGER_H
#define SRC_MEMORY_MANAGER_H

#include <memory>

#include "byte_addressable.h"
#include "memory.h"
#include "options.h"
#include "cache.h"
#ifndef LATENCY_TYPE_H
#define LATENCY_TYPE_H
enum class LATENCY_TYPE{
  FETCH,
  MEM   
};
#endif
// adaptor of byte addressable `backend_` as an interface for simulator
class MemoryManager {
  std::unique_ptr<ByteAddressable> backend_;
  Memory* memory_;
 public:
  uint32_t* time_;
  explicit MemoryManager(const Options& opts);

  void CopyFrom(const void* src, uint32_t dest, uint32_t len,LATENCY_TYPE type=LATENCY_TYPE::MEM);
  void SetByteDirect(uint32_t addr, uint8_t val);//直接写内存的操作->初始化代码段和栈
  void SetByte(uint32_t addr, uint8_t val,LATENCY_TYPE type=LATENCY_TYPE::MEM);
  void SetShort(uint32_t addr, uint16_t val,LATENCY_TYPE type=LATENCY_TYPE::MEM);
  void SetInt(uint32_t addr, uint32_t val,LATENCY_TYPE type=LATENCY_TYPE::MEM);
  void SetLong(uint32_t addr, uint64_t val,LATENCY_TYPE type=LATENCY_TYPE::MEM);

  uint8_t GetByte(uint32_t addr,LATENCY_TYPE type=LATENCY_TYPE::MEM) const;
  uint16_t GetShort(uint32_t addr,LATENCY_TYPE type=LATENCY_TYPE::MEM) const;
  uint32_t GetInt(uint32_t addr,LATENCY_TYPE type=LATENCY_TYPE::MEM) const;
  uint64_t GetLong(uint32_t addr,LATENCY_TYPE type=LATENCY_TYPE::MEM) const;
  void CLDemote(uint32_t addr);
  void PrintStats() const;
};

#endif
