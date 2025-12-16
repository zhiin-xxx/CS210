#pragma once

#include <deque>
#include <memory>
#include <string>
#include <vector>

#include "memory.h"
#include "riscv.h"
#include "simulator.h"
#include "branch_predictor.h"
namespace RISCV {

// --- 核心数据结构定义 (Core Data Structures) ---

struct RstEntry {
  int reorder_rob_id = -1;
  bool busy = false;
};

// 2. Reorder Buffer (ROB) Entry [cite: 61, 63]
struct RobEntry {
  bool busy = false;
  bool ready = false; 
  enum class State { UNKNOWN, Issue, Execute, Write, Commit,EXCPT };
  State state = State::UNKNOWN;
  uint64_t pc = 0;
  uint32_t inst = 0;
  std::string inst_str;
  RISCV::InstType op_type;
    bool has_exception = false;
  enum class Exception { NO=1,ILLEGAL_INSTRUCTION=2,ILLEGAL_EXE=3};
    uint32_t exception_cause = 0; 
  RISCV::RegId dest_reg = 0; 
  uint64_t mem_address = 0;  
  uint64_t value = 0; 
  bool mispredicted = false;
  bool branch = false;
  uint32_t jump_pc = 0;
  bool write_mem = false;
  bool read_mem = false;
  bool read_sign_ext = false;
  uint32_t mem_len = 0;
  bool exit_ctrl = false;
  bool pred_taken = false;
  uint32_t pred_target_pc = 0;
};

// 3. Reservation Station (RS) Entry [cite: 54, 58]
struct RsEntry {
  bool busy = false;
  RISCV::InstType op_type; 
  int dest_rob_id = -1;
  uint64_t vj = 0, vk = 0;
  int qj = -2, //-2:没有使用 -1: 没有 
      qk = -2; 
  int64_t a = 0; 
  int remaining_cycles = 0; 
};
// 4. Instruction Entry (for Instruction Queue)
struct InstEntry {
  uint32_t pc;
  uint32_t raw_inst;
  std::string inst_str;

  RISCV::InstType op_type;
  RISCV::RegId dest_reg;
  RISCV::RegId rs1_reg;
  RISCV::RegId rs2_reg;
  int64_t immediate;

  // Branch Prediction Result (Task 4)
  bool pred_taken = false;
  uint32_t pred_target_pc = 0;
      bool has_exception = false;
  enum class Exception { NO=0,ILLEGAL_INSTRUCTION=2};
    uint32_t exception_cause = 0; // 例如：ILLEGAL_INSTRUCTION = 2
};

// 5. Common Data Bus (CDB) Result [cite: 79]
struct CdbResult {
  bool valid = false;
  int rob_id = -1;
};

// --- Tomasulo 模拟器类定义 ---

class TomasuloSimulator : public Simulator {
public:
  explicit TomasuloSimulator(const Options &opts);

  void Run() override;
  struct History {
    uint32_t inst_count = 0;
    uint32_t cycle_count = 0;
    uint32_t control_hazard_count=0;
    uint32_t predicted_branch_count=0;
    uint32_t correct_branch_count=0;
    std::vector<std::string> inst_record{};
    std::vector<std::string> reg_record{};
  } history_;

private:
  bool enable_delay;
  bool enable_predict = false;
  std::unique_ptr<BR_predict> predictor_ = nullptr;

  // --- 硬件参数配置 (Task 1) ---
  uint32_t ROB_SIZE = 8;    
  uint32_t RS_ALU_SIZE = 4;
  uint32_t RS_MEM_SIZE = 2; 
  uint32_t RS_MUL_SIZE = 4; 
  uint32_t IQ_SIZE ;   

  // --- 乱序核心数据结构 ---

  std::vector<RobEntry> rob_; // Reorder Buffer
  int rob_head_ = 0;          // Commit 指针
  int rob_tail_ = 0;          // Issue 指针
  int rob_count_ = 0;

  std::vector<RsEntry> rs_alu_;
  std::vector<RsEntry> rs_mem_; // Load/Store Buffer
  std::vector<RsEntry> rs_mul_;

  std::vector<RstEntry> rst_; // Register Status Table (32 entries)

  std::deque<InstEntry> inst_queue_; // Instruction Queue (IQ)

  std::vector<CdbResult> cdb_results_; // 本周期所有广播的结果 (多写者 CDB)

  // --- 乱序流水线阶段函数 (Commit -> WriteResult -> Execute -> Issue -> Fetch)
  // ---
  void Commit();
  void WriteResult();
  void Execute();
  void Issue();
  void Fetch();
  void ExecuteEntry(RsEntry &rs, MemoryManager *mem);
  void DecodeInstEntry(InstEntry &inst, const Regs &regs);

  // --- 辅助和控制函数 ---
  void InitHardware(const Options &opts);
  std::string GetRegInfoStr() const;
  void DumpHistory() const override;
  void PrintStatistics() const;
  bool IsRobFull() const;
  int AllocateRobEntry();
  int FindFreeRS(RISCV::InstType type);
  std::vector<RsEntry> *GetRsVector(RISCV::InstType type);

  // 分支预测错误恢复 (Task 4)
  void FlushPipeline(uint32_t correct_pc);
};

} // namespace RISCV