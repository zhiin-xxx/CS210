# Prerequisites For Labs

CS 211 Advanced Computer Architecture, Fall 2025

## Environment

- c++ compiler (c++20-support required)
- cmake        (version >= 3.10)
- linux        (recommended, version >= 22.04)

Take Ubuntu 24.04 as an example, you can prepare your environment by running
the following commands:

```
sudo apt update && sudo apt upgrade
sudo apt install build-essential cmake g++
```

Why C++20?  Our simulator relies on a small subset of C++20 features (e.g.,
improved standard library utilities) which help make the code safer, more
readable, and easier to maintain. Only a few modern features are used, so you
can adapt quickly. If you prefer changing the compilation flag (e.g., to
`c++17`), it is acceptable as long as the project compiles and runs correctly.

## RISC-V Simulator

We provide a **classic five‑stage pipeline RISC‑V CPU simulator**. It accepts
a RISC‑V ELF binary file as input and executes it with logging and debugging
options.

### Build

Under the root directory of this project:

```bash
# generate build files
cmake -B build -S .
# compile
make -C build
```

The `simulator` will be generated in the `build` directory.

### Run and test

Usage dumped via `./build/simulator -h` is:

```txt
RISC-V Simulator 


./build/simulator [OPTIONS]


OPTIONS:
  -h,     --help              Print this help message and exit 
  -i,     --input TEXT:FILE REQUIRED 
                              RISC-V ELF binary file 
  -v,     --verbose           Enable verbose output 
  -s,     --single_step       Enable single-step execution 
  ...
```

### Pre-Built RISC-V ELF files

We provide elf binary files under:

- `test/build/with-syscall`
- `test/build/without-syscall`

To run with a specific test, taking `test/without-syscall/add.c` as an
example, run:

```bash
./build/simulator -i test/build/without-syscall/add.riscv
```

If `-d` option provided, execution history will be dumped to `dump.txt`:

```bash
./build/simulator -i test/build/without-syscall/add.riscv -d
```

After successful execution, statistics will look like this:

```txt
Program exit from an exit() system call
------------ STATISTICS -----------
Number of Instructions: 465
Number of Cycles: 1216
Avg Cycles per Instrcution: 2.6151
Number of Control Hazards: 144
Number of Data Hazards: 606
```

To debug step by step, add `-v` (verbose) and `-s` (single step) options:

```bash
./build/simulator -i test/build/without-syscall/add.riscv -v -s
```

Detailed execution information of each step will be printed as:

```txt
WriteBack: sub
Memory Access: addi
Execute: jal
decode: Bubble
control hazard at fetch
------------ CPU STATE ------------
PC: 0x1014c
zero: 0x000000(0) ra: 0x000000(0) sp: 0x6300000(103809024) gp: 0x011ed0(73424) 
tp: 0x000000(0) t0: 0x000000(0) t1: 0x000000(0) t2: 0x000000(0) 
s0: 0x000000(0) s1: 0x000000(0) a0: 0x011e58(73304) a1: 0x000000(0) 
a2: 0x000038(56) a3: 0x000000(0) a4: 0x000000(0) a5: 0x000000(0) 
a6: 0x000000(0) a7: 0x000000(0) s2: 0x000000(0) s3: 0x000000(0) 
s4: 0x000000(0) s5: 0x000000(0) s6: 0x000000(0) s7: 0x000000(0) 
s8: 0x000000(0) s9: 0x000000(0) s10: 0x000000(0) s11: 0x000000(0) 
t3: 0x000000(0) t4: 0x000000(0) t5: 0x000000(0) t6: 0x000000(0)
```

### Run in Batch with `batch.sh`

```bash
# default, run all tests
bash batch.sh

# run `with-syscall` tests
# input files, such as `with-syscall/test_syscall.c` are provided
bash batch.sh run with-syscall

# run `without-syscall` tests
bash batch.sh run without-syscall
```

## Build Elf Files Manually

If you want to generate ELF binaries yourself:

1. Download toolchain

```bash
git clone https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain
git submodule update --init
```

2. Install dependencies

```bash
sudo apt update && sudo apt install autoconf automake autotools-dev curl python3 python3-pip
 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo
 gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake
 libglib2.0-dev
```

3. Configure install path and build:

```bash
# prefix (absolute path) determines install location
../configure --prefix=$HOME/riscv --with-multilib-generator="rv64i-lp64--;rv64im-lp64--"
make -j$(nproc)

# add to path
export PATH=$HOME/riscv/bin:$PATH
```

> The `--with-multilib-generator` flag specifies the instruction set and binary interface contract. For example:
>
> - `rv64i`: 64-bit base integer ISA
> - `rv64im`: RV64I + M-extension
> - `lp64`: 64-bit long/pointer; use integer registers only

4. Compile test programs

```bash
# `march`: `rv64i` or `rv64im`, `mabi`: `lp64`
# refer to `batch.sh` for usage in this project
riscv64-unknown-elf-gcc -march=[march] -mabi=[mabi] [test_name].c -o [test_name].riscv
# or with syscall support
riscv64-unknown-elf-gcc -march=[march] -mabi=[mabi] [test_name].c test/with-syscall/lib.c -o [test_name].riscv
```

5. Batch build:

```bash
# `batch.sh` also supports batch-building of provided test cases (you may need 
# to modify it to fit your case):
# build elf & assembly files
bash batch.sh build [target: all (default), with-syscall, without-syscall]
```

## Project Structure

```txt
.
├── build
│   ├── ...
│   ├── simulator               # build target
├── src
│   ├── main.cc                 # simulator entry point
│   ├── simulator.h             # base class of simulator
│   ├── simulator.cc
│   ├── five_stage_simulator.h  # inherited from simulator
│   ├── five_stage_simulator.cc
│   ├── memory.h                # memory management r/w interfaces
│   ├── memory.cc
│   ├── options.h               # option definitions and parsing by using `CLI11`
│   ├── elf_reader.h            # adapter to read elf file into memory by using `elfio`
│   ├── riscv.h                 # ISA-level definitions and helper function
│   ├── riscv.cc
│   └── utils.h                 # useful helper macros
├── test
│   ├── build                   # RISC-V elf files
│   ├── without-syscall         # source code of tests
│   └── with-syscall
├── third-party
│   ├── CLI11
│   └── elfio
├── CMakeLists.txt
├── batch.sh                    # to build and run with elf files
├── pack.sh                     # to pack into a zip file
└── README.md
```
