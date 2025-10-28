#!/usr/bin/bash

RISCV_PREFIX="${RISCV_PREFIX:-$HOME/riscv/bin/}"
CC="${RISCV_PREFIX}/riscv64-unknown-elf-gcc"
OBJDUMP="${RISCV_PREFIX}/riscv64-unknown-elf-objdump"
BUILD_DIR="test/build"
SRC_WITH_SYSCALL="test/with-syscall"
SRC_WITHOUT_SYSCALL="test/without-syscall"
SIMULATOR="./build/simulator"

action="${1:-run}"
target="${2:-all}"

case "$action" in
build)
  if [[ ! -f "$CC" ]] || [[ ! -f "$OBJDUMP" ]]; then
    echo "Error: RISC-V toolchain not found at $RISCV_PREFIX"
    exit 1
  fi
  if [[ "$target" == "with-syscall" ]] || [[ "$target" == "all" ]]; then
    mkdir -p $BUILD_DIR/with-syscall
    for test in helloworld test_arithmetic test_syscall test_branch test_cldemote quicksort matrixmulti ackermann; do
      $CC -march=rv64i -mabi=lp64 $SRC_WITH_SYSCALL/${test}.c $SRC_WITH_SYSCALL/lib.c -o $BUILD_DIR/with-syscall/${test}.riscv
      $OBJDUMP -D $BUILD_DIR/with-syscall/${test}.riscv >$BUILD_DIR/with-syscall/${test}.s
    done
    for test in test_rem; do
      $CC -march=rv64im -mabi=lp64 $SRC_WITH_SYSCALL/${test}.c $SRC_WITH_SYSCALL/lib.c -o $BUILD_DIR/with-syscall/${test}.riscv
      $OBJDUMP -D $BUILD_DIR/with-syscall/${test}.riscv >$BUILD_DIR/with-syscall/${test}.s
    done
  fi

  if [[ "$target" == "without-syscall" ]] || [[ "$target" == "all" ]]; then
    mkdir -p $BUILD_DIR/without-syscall
    for test in add double-float mul-div n! qsort simple-function; do
      $CC -march=rv64i -mabi=lp64 $SRC_WITHOUT_SYSCALL/${test}.c -o $BUILD_DIR/without-syscall/${test}.riscv
      $OBJDUMP -D $BUILD_DIR/without-syscall/${test}.riscv >$BUILD_DIR/without-syscall/${test}.s
    done
  fi
  ;;

run)
  if [[ ! -f "$SIMULATOR" ]]; then
    echo "Error: Simulator not found at $SIMULATOR"
    exit 1
  fi

  if [[ "$target" == "with-syscall" ]] || [[ "$target" == "all" ]]; then
    for test in $BUILD_DIR/with-syscall/*.riscv; do
      if [[ -f "$test" ]]; then
        test_name=$(basename "$test" .riscv)
        input_file="$SRC_WITH_SYSCALL/${test_name}.input"
        echo "Running $(basename $test)..."
        if [[ -f "$input_file" ]]; then
          $SIMULATOR -i "$test" <"$input_file"
        else
          $SIMULATOR -i "$test"
        fi
      fi
    done
  fi

  if [[ "$target" == "without-syscall" ]] || [[ "$target" == "all" ]]; then
    for test in $BUILD_DIR/without-syscall/*.riscv; do
      [[ -f "$test" ]] && echo "Running $(basename $test)..." && $SIMULATOR -i "$test"
    done
  fi
  ;;

clean)
  rm -rf $BUILD_DIR
  ;;
esac
