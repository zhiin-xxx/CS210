#include "memory.h"

#include <cstdint>
#include <fmt/core.h>
#include <stdexcept>

void Memory::CheckAddr(uint32_t addr, std::size_t len) const {
  if (addr + len >= arena_.size()) {
    throw std::runtime_error(fmt::format(
        "Invalid memory access to addr {:x} for len {}\n", addr, len));
  };
}

void Memory::ReadSpan(uint32_t addr, std::span<uint8_t> out) {
  CheckAddr(addr, out.size());
  #ifdef DEBUG
  printf("address:%p len:%lu\n", (void*)addr, out.size());
  printf("data:%02x %02x %02x %02x %02x %02x %02x %02x ...\n",
         arena_[addr], arena_[addr+1], arena_[addr+2], arena_[addr+3],
         arena_[addr+4], arena_[addr+5], arena_[addr+6], arena_[addr+7]);
  #endif
  std::memcpy(out.data(), arena_.data() + addr, out.size());
}

void Memory::WriteSpan(uint32_t addr, std::span<const uint8_t> in) {
  CheckAddr(addr, in.size());
  std::memcpy(arena_.data() + addr, in.data(), in.size());
  for(size_t i=0;i<in.size();i++){
    #ifdef DEBUG
    if(in[i]){
      printf("Wrote %02x to %p\n", in[i], addr + i);
    }
    #endif
  }
}
