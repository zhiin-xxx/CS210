# Lab 1
CS 211 Advanced Computer Architecture, Fall 2025

**Grade: 2%** 
**Deadline: 2025/10/12 (Sun) 23:59:59**

Only the **last active submission before the deadline** will be graded. Submissions that are deleted, deactivated, or late will not be considered. 

**This is an individual lab. All work must be your own. Collaboration is not allowed.**

---

## 1. Objectives
- Become familiar with the structure of the provided simulator
- Understand the 5-stage in-order CPU pipeline
- Learn how data forwarding resolves hazards in a pipelined processor

---

## 2. Tasks

### a. Forwarding to Resolve Data Hazard (1 point)

**Five-Stage Pipeline**
The baseline simulator implements a classic five-stage in-order CPU pipeline:
- IF (Instruction Fetch) Fetches the instruction from memory.
- ID (Instruction Decode & Register Read) Decodes the instruction and reads operands from the register file.
- EX (Execute) Perform ALU operations or calculates addresses.
- MEM (Memory Access) Accesses the data memory if required.
- WB (Write-Back) Writes the result back to the register file.

**Hazard Handling in the Baseline Simulator**
In the current simulator, hazards are resolved by **stalling** -- If a data hazard or control hazard is detected, the fetch (IF) and decode (ID) stages are stalled until the hazard is resolved.

**Your Task: Implement Forwarding (Bypassing)**
You need to implement **data forwarding** mechanisms so that dependent instructions can receive the latest values **without stalling** whenever possible. Specifically:

1. **EX/MEM -> EX forwarding**  
   - When an instruction in the **EX stage** produces a result (e.g., from the ALU), the next instruction, now in its **EX stage**, might need this result.
     ```asm
     add x3, x1, x2   # result computed in EX
     sub x5, x3, x4   # needs x3 immediately in next EX
     ```
   - You should forward the ALU result from the EX/MEM pipeline register directly to the ALU input for the dependent instruction.

2. **MEM/WB -> EX forwarding**  
   - Some results are only available after the **MEM stage** (e.g., data from an `lw` instruction).
     ```asm
     lw x3, 0(x1)     # load result available at after MEM
     add x5, x3, x4   # need x3 in EX
     ```
   - Forward the data from the MEM/WB pipeline register to the EX stage input of the dependent instruction.  
   - Note that a stall is still necessary for a true load-use hazard (i.e., when the data is not yet available from memory).

3.  **Register File Write-before-Read (WB -> ID)**
   - In the same clock cycle, an instruction in the **WB stage** writes to a register while another instruction in the **ID stage** reads from the same register. Without proper handling, the ID stage might read the old (stale) value.
   - To resolve this, implement register file logic that ensures **writes from the WB stage complete in the first half of the clock cycle, and reads for the ID stage occur in the second half**. This split-phase approach guarantees that the ID stage always reads the newly updated value.

For this part, you will primarily modify the following files:
- `src/five_stage_simulator.h`
- `src/five_stage_simulator.cc`

**Expected Outcome**: Your modified simulator should significantly reduce stalls for data hazards and, as a result, achieve higher instruction throughput.

---

### b. Support the `mulh` instruction (1 point)

Implement the instruction: `mulh`, without using **compiler-specific 128-bit integer types** such as `__int128`. For this part, modify primarily the following files:  
- `src/riscv.h`  
- `src/riscv.cc`  

The test case `test_mulh.c` is provided to help you verify your implementation. When compiling it, use the flags `-march=rv64im -mabi=lp64` to enable the M-extension.

You may refer to [RISC-V ISA Manual](https://github.com/riscv/riscv-isa-manual/releases/tag/riscv-isa-release-1239329-2023-05-23) for official specifications.

---

## 3. Testing

### a. Forwarding
- Verify that the simulator compiles and runs without errors. 
- Run provided test cases. Compare your forwarding version with the stall-based baseline. 
- Record performance statistics and analyze improvements in your report. 

### b. `mulh` Support
- Run the simulator with `test/riscv-elf/test_mulh.riscv` (source: `test/test_mulh.c`) to verify `mulh` correctness. 
- Correct execution of the test indicates proper implementation. 

---

## 4. Report Requirements

Your lab report (English, PDF) must include: 
1. **Analysis of Original Code** -- Structure of the baseline simulator. 
2. **Design Description**
   - Forwarding implementation strategy. 
   - Explanation of 64-bit multiplication for `mulh`. 
   - Short code snippets for clarity (not full source dumps). 
3. **Evaluation and Analysis**
   - Comparison between baseline and modified simulators.  
   - Test outputs and performance measurements.  
   - Critical analysis of performance gains.  

---

## 5. Submission

**Required Files**:
- **Source code**: Your complete, buildable, and executable source code..  
- **Report (PDF)**: Your lab report in PDF format.

You may include your own test cases, but please provide a clear explanation of how to use them.

Do not include:  
- `build/`
- Version control data (e.g., `.git/`, `.vscode/`)  
- Temporary logs (e.g., `dump.txt`)

You can pack your source code by `bash pack.sh`

Zip file naming convention: `YourID_MailPrefix.zip`
- example: `2025000000_zhangs2025.zip`  

Directory Structure inside the zip file:
```
[YourID]_[MailPrefix].zip
├── report.pdf
└── simulator/           # Source code excluding .git/ and build/
```

---
