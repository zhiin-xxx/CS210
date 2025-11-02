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

void Memory::ReadSpan(uint32_t addr, std::span<uint8_t> out,uint32_t* time) {
  
  if(time && flag){ //如果是访存->flag为TRUE代表可以开始计时
    *time+=time_;
    flag=false;
    // printf("flag=false in ReadSpan,addr:%p\n",addr);
    return;
  }
  if(time && !flag){ flag=true; //如果是访存->flag为FALSE代表计时结束，返回；
    // printf("flag=true in ReadSpan,addr:%p\n",addr);
  }
  stat_total_accesses++;
  stat_read_accesses++;
  // memory访问一般默认命中
  stat_hits++;
  CheckAddr(addr, out.size());
  #ifdef DEBUG
  FILE* fp = fopen("3.txt", "a");
  if (fp) {
      fprintf(fp,"address:%p len:%lu\n", (void*)addr, out.size());
      fprintf(fp,"data:%02x %02x %02x %02x %02x %02x %02x %02x ...\n",
         arena_[addr], arena_[addr+1], arena_[addr+2], arena_[addr+3],
         arena_[addr+4], arena_[addr+5], arena_[addr+6], arena_[addr+7]);
      fclose(fp);
  }
  #endif
  std::memcpy(out.data(), arena_.data() + addr, out.size());
}

void Memory::WriteSpan(uint32_t addr, std::span<const uint8_t> in,uint32_t* time) {
  if(time && flag){
    *time+=time_;
    flag=false;
    return;
  }
  if(time && !flag) flag=true;
  stat_total_accesses++;
    stat_write_accesses++;
    // memory写入也算命中
    stat_hits++;
  CheckAddr(addr, in.size());
  std::memcpy(arena_.data() + addr, in.data(), in.size());
  for(size_t i=0;i<in.size();i++){
    #ifdef DEBUG
    if(in[i]){
      FILE* fp = fopen("3.txt", "a");
      if (fp) {
          fprintf(fp, "Wrote %02x to %p\n", in[i], (void*)(uintptr_t)(addr + i));
          fclose(fp);
      }
    }
    #endif
  }
  
}
