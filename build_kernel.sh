#!/usr/bin/bash

RISCV_PREFIX="${RISCV_PREFIX:-$HOME/riscv/bin/}"
CC="${RISCV_PREFIX}riscv64-unknown-elf-gcc"
OBJCOPY="${RISCV_PREFIX}riscv64-unknown-elf-objcopy"
OBJDUMP="${RISCV_PREFIX}riscv64-unknown-elf-objdump"

$CC -march=rv64imazicsr -mabi=lp64 -nostdlib -T src/kernel/linker.ld src/kernel/trap.S src/kernel/trap_handler.c -o build/kernel.elf

$OBJCOPY -O binary build/kernel.elf build/kernel.bin

$OBJDUMP -D build/kernel.elf >build/kernel.s

echo "Kernel image compiled successfully"
