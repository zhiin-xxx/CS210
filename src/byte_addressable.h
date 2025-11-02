#ifndef SRC_BYTE_ADDRESSABLE_H
#define SRC_BYTE_ADDRESSABLE_H

#include <cstdint>
#include <cstring>
#include <span>

class ByteAddressable {
 public:
  int flag=true;

  virtual ~ByteAddressable() = default;
  virtual void ReadSpan(uint32_t addr, std::span<uint8_t> out,uint32_t* time) = 0;
  virtual void WriteSpan(uint32_t addr, std::span<const uint8_t> in,uint32_t* time) = 0;

  template <typename T>
  void Read(uint32_t addr, T& value,uint32_t* time) {
    std::array<uint8_t, sizeof(T)> buf{};
    ReadSpan(addr, std::span<uint8_t>(buf.data(), buf.size()),time);
    std::memcpy(&value, buf.data(), buf.size());
  }

  template <typename T>
  void Write(uint32_t addr, T value,uint32_t* time) {
    std::array<uint8_t, sizeof(T)> buf{};
    std::memcpy(buf.data(), &value, buf.size());
    WriteSpan(addr, std::span<const uint8_t>(buf.data(), buf.size()),time);
  }
};

#endif
