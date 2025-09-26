#!/usr/bin/env bash

# 使用系统 RISC-V 工具链
CC="${CC:-riscv64-linux-gnu-gcc}"
OBJDUMP="${OBJDUMP:-riscv64-linux-gnu-objdump}"
BUILD_DIR="test/build"
SRC_WITH_SYSCALL="test/with-syscall"
SRC_WITHOUT_SYSCALL="test/without-syscall"
SIMULATOR="./build/simulator"

action="${1:-run}"
target="${2:-all}"

case "$action" in
build)
  # 检查工具链是否存在
  if ! command -v $CC >/dev/null 2>&1 || ! command -v $OBJDUMP >/dev/null 2>&1; then
    echo "Error: RISC-V toolchain not found (expected $CC and $OBJDUMP in PATH)"
    exit 1
  fi

  # 构建带 syscall 的测试
  if [[ "$target" == "with-syscall" || "$target" == "all" ]]; then
    mkdir -p $BUILD_DIR/with-syscall
    for test in helloworld test_arithmetic test_syscall test_branch quicksort matrixmulti ackermann; do
      $CC -march=rv64i -mabi=lp64 -O2 $SRC_WITH_SYSCALL/${test}.c $SRC_WITH_SYSCALL/lib.c -o $BUILD_DIR/with-syscall/${test}.riscv
      $OBJDUMP -D $BUILD_DIR/with-syscall/${test}.riscv > $BUILD_DIR/with-syscall/${test}.s
    done
    for test in test_rem test_mulh; do
      $CC -march=rv64im -mabi=lp64 -O2 $SRC_WITH_SYSCALL/${test}.c $SRC_WITH_SYSCALL/lib.c -o $BUILD_DIR/with-syscall/${test}.riscv
      $OBJDUMP -D $BUILD_DIR/with-syscall/${test}.riscv > $BUILD_DIR/with-syscall/${test}.s
    done
  fi

  # 构建不带 syscall 的测试
  if [[ "$target" == "without-syscall" || "$target" == "all" ]]; then
    mkdir -p $BUILD_DIR/without-syscall
    for test in add double-float mul-div n! qsort simple-function; do
      $CC -march=rv64i -mabi=lp64 -O2 $SRC_WITHOUT_SYSCALL/${test}.c -o $BUILD_DIR/without-syscall/${test}.riscv
      $OBJDUMP -D $BUILD_DIR/without-syscall/${test}.riscv > $BUILD_DIR/without-syscall/${test}.s
    done
  fi
  ;;

run)
  if [[ ! -f "$SIMULATOR" ]]; then
    echo "Error: Simulator not found at $SIMULATOR"
    exit 1
  fi

  # 运行带 syscall 的测试
  if [[ "$target" == "with-syscall" || "$target" == "all" ]]; then
    for test in $BUILD_DIR/with-syscall/*.riscv; do
      [[ -f "$test" ]] || continue
      test_name=$(basename "$test" .riscv)
      input_file="$SRC_WITH_SYSCALL/${test_name}.input"
      echo "Running $test_name..."
      if [[ -f "$input_file" ]]; then
        $SIMULATOR -i "$test" <"$input_file"
      else
        $SIMULATOR -i "$test"
      fi
    done
  fi

  # 运行不带 syscall 的测试
  if [[ "$target" == "without-syscall" || "$target" == "all" ]]; then
    for test in $BUILD_DIR/without-syscall/*.riscv; do
      [[ -f "$test" ]] || continue
      echo "Running $(basename $test .riscv)..."
      $SIMULATOR -i "$test"
    done
  fi
  ;;

clean)
  rm -rf $BUILD_DIR
  echo "Cleaned build directory."
  ;;

*)
  echo "Usage: $0 {build|run|clean} [with-syscall|without-syscall|all]"
  exit 1
  ;;
esac
