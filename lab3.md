# Lab 3: Cache

CS 211 Advanced Computer Architecture, Fall 2025

**Grade: 12%**
**Deadline: 2025/11/16 (Sun) 23:59:59**

Only the **last active submission before the deadline** will be graded. Submissions that are deleted, deactivated, or late will not be considered.

**This is an individual lab. All work must be your own. Collaboration is not allowed.**

---

## 1. Objectives

This lab focuses on designing and implementing a realistic, configurable cache-memory hierarchy and simulating its impact on processor performance. By completing this lab, you will:

*   Implement a flexible, **multi-level cache hierarchy** framework.
*   Master core **cache management policies and their impacts**, including inclusion policies (Inclusive/Exclusive), write policy (Write-Back with Write-Allocate, WBWA) and replacement policies (LRU/Random).
*   Simulate the **`CLDEMOTE`** instruction to explore explicit software-controlled cache management.
*   **Simulate realistic memory access latencies**. Record and analyze the impact of cache management policies on pipeline CPI.

---

## 2. Background

### 2.1 Cache Memory Hierarchy

Modern processors employ a multi-level cache hierarchy to bridge the significant speed gap between fast CPU cores and slow main memory. A typical hierarchy consists of several levels (L1, L2, L3) positioned between the CPU and Main Memory. These levels are generally characterized by increasing capacity, increasing latency, and decreasing cost per bit as they move further from the CPU.

In this lab, you need to design a generic cache framework that is capable of supporting an arbitrary number of levels. When designing your system, think in terms of relative relationships **"Upper Level"** (closer to the CPU, e.g., L1 relative to L2) and **"Lower Level"** (closer to Main Memory, e.g., L2 relative to L1). This abstraction will allow your implementation to easily scale from a single-level cache to complex multi-level configurations.

### 2.2 Replacement Policies

When a cache set is full and a new block must be brought in due to a miss, a **Replacement Policy** determines which existing block to evict. You must support two policies:

*   **Least Recently Used (LRU)**: Evicts the block that has not been accessed for the longest time, relying on the principle of temporal locality.
*   **Random**: Randomly selects a victim block to evict. While simple, it can sometimes avoid pathological worst-case scenarios encountered by LRU.

### 2.3 Write Policies

[Write policies](https://en.wikipedia.org/wiki/Cache_(computing)#Write_policies) dictate how data is updated in the cache hierarchy during standard store operations.

You are required to implement **Write-Back with Write-Allocate (WBWA)**:
*   **Write-Back**: Data is written only to the current cache level initially. The block is marked as "dirty". It is written back to the lower level only when it is evicted. This conserves memory bandwidth.
*   **Write-Allocate**: On a write miss, the block is first loaded (allocated) into the current cache from the lower level, and then the write operation is performed.

### 2.4 Inclusion Policies

In multi-level caches, [inclusion policies](https://en.wikipedia.org/wiki/Cache_inclusion_policy) define the relationship between the data stored in different levels. You must support:

*   **Inclusive**: guarantees that a **lower-level cache (e.g., L2) contains a superset of the data in all upper-level caches** (e.g., L1). If a block is evicted from L2, it must perform back-invalidation in L1 to maintain this property.
*   **Exclusive**: Guarantees that **a data block exists in at most one level of the cache hierarchy at any given time**. This maximizes the total effective cache capacity. Note that a clean cache line that is evicted from a higher-level cache (e.g., L1) is moved to the immediate lower-level cache (e.g., L2).

---

## 3. Tasks

### Task 1: Multi-Level Cache Framework

Your core task is to implement a flexible and configurable [cache](https://en.wikipedia.org/wiki/Cache_(computing)) hierarchy. Rather than hardcoding, design generic parameters that can be configured and components that can be chained together.

**Requirements:**

1.  **Data Structures**: Design robust structures for Cache Lines (valid bit, dirty bit, tag, data, metadata for replacement), Sets, and Cache levels.
2.  **Address Decoding**: Implement generic decoding of 32-bit addresses into Tag, Index, and Offset based on the configured size, associativity, and line size.
3.  **Core Operations**: Implement `Read` and `Write` operations that correctly handle hits, misses, allocations, and evictions.
4.  **Policy Support**: Implement support for all required policies, selectable via runtime configuration: LRU/Random replacement, WBWA write policy, and Inclusive/Exclusive inclusion.
5.  **Hierarchy Management**: Integrate your cache into the existing simulator framework. The `MemoryManager` class serves as the adaptor to the pipeline. You will implement the `TieredCache` class, which is assigned to `MemoryManager`'s `backend_` member, to manage the complete cache-memory hierarchy. Your implementation must support configurations of one, two, or three cache levels.

**Simplification**: Assume standard **"shared" policies for the entire hierarchy** in this lab. For example, if the simulation is configured as "Inclusive", all levels should adhere to that policy relative to each other.

**Tip**: Start with a single-level cache (L1 only) connected to main memory. Once robust, extend it to two or more levels.

### Task 2: `CLDEMOTE` Instruction Support

`CLDEMOTE` ([Cache Line Demote](https://www.felixcloutier.com/x86/cldemote)) is a performance hint instruction (on some x86 processors) that moves a cache line from a cache level closer to the CPU to one further away (e.g., typically L3) without writing it all the way to main memory. This is useful for managing data known to be "cold" in the near future.

Since RISC-V lacks an equivalent standard instruction, we simulate it via a custom system call (provided in `test/with-syscall/lib.h`).

**Requirement**: Handle this system call in the simulator by implementing the demotion logic -- **pushing it down to the next level, but without writing it back to main memory**.

**Think**: How does the behavior of `CLDEMOTE` differ fundamentally between an *Inclusive* hierarchy and an *Exclusive* hierarchy?

### Task 3: Latency Simulation

To accurately model performance, you must simulate memory access latency. You may use [Intel core i7 parameters (Table 2-20)](https://www.intel.com/content/dam/doc/manual/64-ia-32-architectures-optimization-manual.pdf) as a reference for a realistic 3-level configuration which is already given as preset parameters in `src/options.h`.

**Requirements**:

1.  **Cumulative Latency**: Calculate the total latency for every memory access. For example, an L1 miss followed by an L2 hit should incur `L1_latency + L2_latency`.
2.  **Pipeline Stalling**: When a **data access** (Load/Store) occurs in the MEM stage, stall the pipeline for the calculated duration if it exceeds 1 cycle. For simplicity, you **DO NOT** need to simulate latency for Instruction Fetches (I-Cache). Only simulate latency for data memory access.

### Task 4: Statistics and Tracing

Robust reporting is essential for evaluation and debugging.

**Requirements**:

1. **Statistics**: At the end of execution, print detailed statistics for **each** cache level, including its configuration, total accesses, hit/miss rates, evictions, and write-backs.
2. **Tracing**: Implement tracing logic (using `--cache_trace <file>`) that logs every cache action (e.g., hit/miss, allocation, eviction, write-back, demotion). The trace should contain enough detail to reconstruct the lifetime of any memory address (e.g., `L1 MISS addr=0x...`, `L2 HIT addr=0x...`, `L1 EVICT addr=0x... DIRTY`).

---

## 4. Testing

### 4.1 Debugging Tips

*   **Incremental Development**: Do not attempt to implement everything at once. Get a simple 1-level, direct-mapped cache working first. Then add associativity, then more levels, and finally complex inclusion policies.
*   **Cache Parameters**: The simulator framework provides `--cache_preset` options (e.g., `l1`, `l1l2`) for quick standard configurations. You can also use `--cache_levels` options to customize cache parameters (see `src/options.h` for details).
*   **Verify with Traces**: If your hit rate looks wrong, enable generic tracing. Follow a specific address through the log to see why it missed or was evicted unexpectedly.
*   **Data Integrity**: **Performance is meaningless without correctness**. Ensure your simulator still produces the correct program output for all test cases, especially after complex eviction/write-back sequences.

### 4.2 Provided Tests

Use the provided benchmark suite. Pay special attention to:
*   Standard testcases for performance analysis and correctness validation.
*   `test/with-syscall/test_cldemote.c` for verifying `CLDEMOTE` support.

### 4.3 Running Examples

Run with specified cache parameters:
```bash
./build/simulator -i test/build/with-syscall/ackermann.riscv --cache_levels 4K,8,64,4,lru --cache_levels 8K,8,64,20,lru --enable_latency --inclusion_policy inclusive --write_policy wbwa
```

Run with preset cache parameters:
```bash
./build/simulator -i test/build/with-syscall/ackermann.riscv --cache_preset l1l2l3 --enable_latency --write_policy wbwa --replacement_policy lru --enable_trace
```

---

## 5. Report Requirements

Your lab report must be in English (PDF format) and include:

### 5.1 Design Description

*   **Architecture Overview**: High-level diagram and description of your generic cache class and how multiple levels are linked.
*   **Policy Implementation**: Explain how you implemented WBWA, LRU, and specifically, the complex interactions required for Inclusive/Exclusive policies.
*   **Latency Simulation**: Briefly describe how you calculate cumulative latency and injected stalls into the pipeline.

### 5.2 Evaluation and Analysis

*   **Architecture Comparison**: Compare CPI and total cycles across different configurations (No Cache vs. L1 vs. L1+L2 vs. L1+L2+L3). Use plots to illustrate the differences.
*   **Basic Parameters Study**: Quantitatively measure the impact of cache line size. Quantitatively measure the impact of cache size (for this one, you can do with a single-level cache, i.e., L1 only).
*   **Inclusion Policy Comparison**: Quantitatively compare Inclusive vs. Exclusive policies. Under what access patterns does one outperform the other? (For this one, configure that your caches in a two- or three-level cache hierarchy all share the same replacement policy. You need to test with both replacement policies).
*   **Replacement Policy Comparison**: Quantitatively compare LRU vs. Random replacement policies. Under what access patterns does one outperform the other? (For this one, you can test in a single-level cache).
*   **A compositional study**: There are multiple combinations of inclusion policies and replacement policies. Do a quantitative study using a two-level cache. For example, fix the inclusion policy to inclusive, and then compare the performance of different replacement policy pairs like (L1: LRU, L2: LRU) vs. (L1: LRU, L2: Random). You should then analyze if your findings change when the inclusion policy is switched to exclusive.
*   **`CLDEMOTE` Study**: Demonstrate (via traces or stats) that your `CLDEMOTE` implementation effectively moves data downwards. Discuss potential use cases for this instruction.

### 5.3 Challenges and Solutions

*   Discuss the most significant technical challenges you faced (e.g., handling back-invalidations, debugging memory corruption) and how you solved them.

---

## 6. Pack for Submission

- Add your report (`report.pdf`) to the project's root directory.
- Modify `pack.sh` to include your name and student ID.
- Run `bash pack.sh` to create the submission archive.
