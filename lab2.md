# Lab 2 Precise Trap Handling

CS 211 Advanced Computer Architecture, Fall 2025

**Grade: 4%**
**Deadline: 2025/10/26 (Sun) 23:59:59**

Only the **last active submission before the deadline** will be graded. Submissions that are deleted, deactivated, or late will not be considered.

**This is an individual lab. All work must be your own. Collaboration is not allowed.**

---

## 1. Objective

The goal of this lab is to implement a precise trap handling mechanism in the RISC-V simulator.

- Build a trap path where a user-mode `ecall` instruction transitions into kernel mode, executes a handler located at a predefined trap vector, and returns to user mode via `sret` (or `mret`).
- Correctly save and restore the program context according to the RISC-V calling convention, ensuring the trap is precise.

---
## 2. Background

### 2.1 From Direct Syscalls to Full Trap Handling

The current simulator handles system calls (see `test/with-syscall/lib.c`) by invoking host functions inside `HandleSyscall()` in `src/riscv.cc`. This shortcuts the user/kernel isolation that real operating systems enforce.

In a real RISC-V system, a user process issues an `ecall`, the hardware records state in CSRs, jumps to a privileged trap handler, executes kernel logic, and finally executes `sret` to resume user mode. Our lab will emulate this flow inside the simulator.

### 2.2. Lab Overview

You will implement the necessary logic in both the simulator and a small, standalone kernel (under `src/kernel` directory) to handle a custom system call, `find_min()`.

**Simulator responsibilities**

- Detect `ecall`, record CSR state (`scause`, `sepc`, etc.), redirect control to the trap vector (`stvec`), and implement `sret`;
- Distinguish `find_min` from other syscalls; only `find_min` must trap into the kernel, while existing I/O syscalls may still use `HandleSyscall()` for convenience;
- Resume user execution precisely after `sret`.

**Kernel responsibilities**

- `trap.S` must save all general-purpose registers (except `x0`) before calling the C handler;
- The stack pointer (`sp`) becomes the first argument (`a0`) to `trap_handler()`, giving it access to the saved context;
- `trap_handler.c` must read arguments, compute the result, and write the return value back into the context at the location corresponding to the `a0` register.

The general execution flow will be:
`User Program/Simulator (ecall) -> Kernel (__trap_entry) -> Kernel (Handler) -> Simulator (sret) -> User Program (Resume)`

**Simplification:** To simplify this lab, you only need to route the new `find_min()` system call through the full trap path. The existing I/O-related system calls (like `print_s()`) can continue to be handled directly by the simulator's `HandleSyscall()` function. This avoids the complexity of performing I/O from within the kernel.

### 2.3. Kernel and Test Program

The kernel, containing only the trap vector handler, is compiled separately into a standard-library-free binary (`kernel.bin`). The simulator loads this binary into a specific memory location at startup. You will need to inspect the `build_kernel.sh` and `options.h` to understand how the kernel image is generated and read.

The test case for this lab is a `find_min()` function, which finds the minimum value in an integer array. The source code is provided in `test/with-syscall/test_find_min.c`. You must complete the calling convention logic in `lib.c` and use the provided `batch.sh` to compile this test into a RISC-V executable.

**Important Note:** Please follow the instructions in `README.md` to install, compile, and test your RISC-V toolchain. Contact TA immediately if you encounter any environment setup issues.

---

## 3. Tasks

You are required to complete the following tasks:

### 3.1. Simulator Side:

- **Implement `sret`:** Add support for the `sret` instruction (or `mret`, depending on your chosen privilege level).
- **Manage Trap Context:** Correctly save and restore the program counter (PC) to resume execution after the trap. You will need to use the appropriate privileged CSRs (Control and Status Registers, etc.) for this. Implementing for a single privilege mode (Supervisor or Machine) is sufficient.
- **Differentiate Syscalls:** Design a convention to distinguish the `find_min()` syscall from existing ones by using specific values in registers.
- **Dispatch `ecall`:** Modify the `ecall` execution logic:
  - For the `find_min()` syscall, it should "jump" to the kernel's `__trap_entry`.
  - For all other syscalls, it should continue to call the existing `HandleSyscall()` function.
- **Ensure Precise Return:** The program must correctly resume execution from the instruction immediately following the `ecall` upon returning from the kernel.

## 3.2. Kernel Side:

- **Complete `trap.S`:** Following the [RISC-V calling convention](https://riscv.org/wp-content/uploads/2024/12/riscv-calling.pdf), complete `trap.S` to correctly save the full user context before calling the handler (`trap_handler()`) and restore it before returning. For simplicity, you may use the user's stack for this context save; a separate kernel stack is not required.
- **Implement `trap_handler.c`:** In the C handler, dispatch the `find_min()` call, read parameters from context, execute its logic, and write the return value to the context in the position reserved for register `a0`, ensuring the correct value is restored to `a0` upon return.

### 3.3. Report Requirements:

- **Trap-path design** 
   Describe the CSR usage, privilege transitions, and simulator changes that enable trapping and precise return.

- **Kernel implementation** 
   Explain the context layout, how `trap.S` and `trap_handler` cooperate, and how the return value reaches user space.

- **Memory layout** 
   Show the memory layout after loading the kernel image, user program, and initializing the user stack. Mention any linker-script changes if applicable.

### 3.4. Expected Results:

- The instruction number for `test_find_min` may change after implementing the trap path.
- The `test_find_min` program should execute correctly, print the expected result, and exit without errors.

---

## 4. Build, Test and Submit

- **Build Kernel Image:** `bash build_kernel.sh`
- **Build Test ELF:** `bash batch.sh build`
- **Build Simulator:** `cmake -B build -S . && make -C build` 
- **Run a Single Test:** `./build/simulator -i test/build/with-syscall/test_find_min.riscv -k build/kernel.bin`
- **Package for Submission:**
  - Add your report (`report.pdf`) to the project's root directory.
  - Modify `pack.sh` to include your name and student ID.
  - Run `bash pack.sh` to create the submission archive.
- **Submit:** Submit all source files, build scripts, test programs, and your final report. Ensure your code is runnable and your submission is packed using the provided script.

--- 

## Suggested References

- [RISC-V Privileged Architecture Specification](https://riscv.github.io/riscv-isa-manual/snapshot/privileged/)
- [RISC-V Instruction Set Manual (Unprivileged Spec)](https://riscv.github.io/riscv-isa-manual/snapshot/unprivileged/)
- [RISC-V calling convention](https://riscv.org/wp-content/uploads/2024/12/riscv-calling.pdf)
- [RISC-V trap (exception) handler](https://ztex.medium.com/risc-v-trap-exception-handler-35b9a2922807)”
