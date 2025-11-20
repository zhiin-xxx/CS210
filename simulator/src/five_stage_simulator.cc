#include "five_stage_simulator.h"

#include <cassert>
#include <cstring>
#include <fmt/format.h>
using namespace fmt;
#include <fstream>
#include <memory>
#include <sstream>
#include <stdexcept>
#include <string>

#include "memory.h"
#include "options.h"
#include "riscv.h"
#include "simulator.h"
#include "utils.h"
using namespace RISCV;

void FiveStageSimulator::Run() {
  // Main Simulation Loop
  while (true) {
    if (regs_[0] != 0) {
      Panic("Register 0's value is not zero!\n");
    }
    if (regs_[REG_SP] < stack_base_ - stack_size_) {
      Panic("Stack Overflow!\n");
    }

    // handle branch recoveries
    if (should_recover_branch_) {
      if (verbose_)
        printf("branch recovery: new pc 0x%08lx\n", branch_next_pc_);

      pc_ = branch_next_pc_;
      should_recover_branch_ = false;
      mispredicted_branch_=false;
      branch_next_pc_ = 0;

      wait_for_branch_ = false;
    }

    // clean data hazard
    wait_for_data_ = false;
    data_hazard_execute_op_dest_ = -1;
    data_hazard_mem_op_dest_ = -1;
    data_hazard_wb_op_dest_ = -1;

    // DO NOT CHANGE the execution order below
    WriteBack();
    MemoryAccess();
    Execute();
    Decode();
    Fetch();

    history_.cycle_count++;
    history_.reg_record.push_back(GetRegInfoStr());
    if (history_.reg_record.size() >= 100000) {  // Avoid using up memory
      history_.reg_record.clear();
      history_.inst_record.clear();
    }

    if (verbose_) {
      std::cout << GetRegInfoStr();
    }

    if (single_step_) {
      // printf("Type d to dump memory in dump.txt, press ENTER to continue: ");
      char ch;
      while ((ch = getchar()) != '\n') {
        if (ch == 'd') {
          DumpHistory();
        }
      }
    }
  }
}

void FiveStageSimulator::Fetch() {
  if(enable_predict){
  //分支预测错误 不需要进行排空，因为下一个周期就会进行恢复
  if(true == mispredicted_branch_){
      if (verbose_) {
        printf("  Branch misprediction recovery at fetch\n");
      }
      history_.control_hazard_count++;
      return;
  }
}
  // control hazard 1.分支预测taken后的等待
  if (true == wait_for_branch_) {
    if (verbose_) {
      printf("control hazard at fetch\n");
    }
    // debug information
    history_.control_hazard_count++;
    return;
  }

  /* if pipeline is stalled (our output slot is not empty), return */
  if (decode_op_ != nullptr) {
    if (verbose_) {
      printf("Fetch: stalled at fetch\n");
    }
    return;
  }

  if (pc_ % 2 != 0) {
    Panic("Illegal PC 0x%x!\n", pc_);
  }

  /* Allocate an op and send it down the pipeline. */
  auto op = std::make_unique<PipeOp>();
  op->inst = memory_->GetInt(pc_);
  if (verbose_) {
    printf("Fetched instruction 0x%.8x at address 0x%lx\n", op->inst, pc_);
  }
  op->pc = pc_;
  decode_op_ = std::move(op);

  /* update PC */
  pc_ += 4;
}

void FiveStageSimulator::Decode() {
  /* if no op to decode, return */
  if (decode_op_ == nullptr) {
    if (verbose_) {
      printf("decode: Bubble\n");
    }
    return;
  }
if(enable_predict){
  //分支预测错误
  if(true == mispredicted_branch_){
      if (verbose_) {
        printf("  Branch misprediction recovery at decode\n");
      }
      //清除流水线中的内容
      decode_op_ = nullptr;
      history_.control_hazard_count++;
      return;
  }
}
  auto* op = decode_op_.get();
  if (op->pc_len != 4) {
    Panic(
        "Current implementation does not support 16bit RV64C instructions!\n");
  }
  try {
    DecodeInst(op, regs_);
  } catch (const std::exception& e) {
    Panic(e.what());
  }

  history_.inst_record.emplace_back(
      fmt::format("{:#010x}: {}\n", op->pc, op->inst_str));

  /* if downstream stall or occur data hazard, return
   * (and leave any input we had)
   */
  if (execute_op_ != nullptr) {
    if (verbose_) {
      std::cout << fmt::format(
          "Decoded instruction {:#010x} at address {:#x} as {}\n", op->inst,
          op->pc, op->inst_str);
    }
    return;
  }
  if (verbose_) {
    std::cout << fmt::format(
        "Decoded instruction {:#010x} at address {:#x} as {}\n", op->inst,
        op->pc, op->inst_str);
  }
  
  // data hazard detect at last to show inststr
  // detect and handle data hazard
  // data hazard
  auto wait_for_data = [&](RegId rs) -> bool {
    return rs > 0 &&
           (rs == data_hazard_execute_op_dest_ ||
            rs == data_hazard_mem_op_dest_ || rs == data_hazard_wb_op_dest_);
  };
  if (wait_for_data(op->rs1) || wait_for_data(op->rs2)) {
    if (verbose_) {
      printf("\tstalled at decode for data hazard\n");
    }
    // debug information
    history_.data_hazard_count++;
    return;
  }
if(enable_predict){
  // control hazard (wait_for_branch_用于暂停本周期的取指）
  //分支预测逻辑
  bool& branch_taken = op->branch_taken;
  if(IsBranch(op->inst_type) || IsJump(op->inst_type)){ //如果是分支指令，则进行分支预测
      if(predictor_->strategy(op->pc)){
          branch_taken=true;
          PipeRecover(op->branch_target); //在这里进行了预测为taken的跳转，流水线延迟一个时钟
          if (verbose_) {
            std::cout << fmt::format(
                "  Branch prediction: taken\n");
          }
          wait_for_branch_=true;
      }else{
          branch_taken=false;
          wait_for_branch_=false; //继续进行下一条指令的取指+4
          if (verbose_) {
            std::cout << fmt::format(
                "  Branch prediction: not taken\n");
          }
      }
      history_.predicted_branch_count++; //预测次数+1
  }
}
else wait_for_branch_ = IsBranch(op->inst_type) || IsJump(op->inst_type);
  /* place op in downstream slot */
  execute_op_ = std::move(decode_op_);
  decode_op_ = nullptr;
}

void FiveStageSimulator::Execute() {
  /* if no op to execute, return */
  if (execute_op_ == nullptr) {
    if (verbose_) {
      printf("Execute: Bubble\n");
    }
    return;
  }
  auto* op = execute_op_.get();

  /* if downstream stall, return (and leave any input we had) */
  if (mem_op_ != nullptr) {
    if (verbose_) {
      printf("Execute: Stall\n");
    }
    return;
  }
  if (verbose_) {
    std::cout << fmt::format(
        "Execute instruction {:#010x} at address {:#x} as {}\n", op->inst,
        op->pc, op->inst_str);
  }
  history_.inst_count++;

  try {
    bool exit_ctrl = false;
    ExecuteInst(op, &exit_ctrl, memory_.get());
    if (exit_ctrl) {
      printf("Program exit from an exit() system call\n");
      if (dump_history_) {
        printf("Dumping history to dump.txt...");
        DumpHistory();
      }
      PrintStatistics();
      exit(0);
    }
  } catch (const std::exception& e) {
    Panic(e.what());
  }
if(enable_predict){
  // control hazard to be solved after this cycle in simulate(), since that
  // means execute stage ends
  if (IsBranch(op->inst_type) || IsJump(op->inst_type)) {
    //这里在分支预测正确的情况下，不进行任何操作
    //否则排空流水线
    if(op->branch_taken){ //预测taken
        if(op->jump_pc != op->branch_target){ //预测错误
            if (verbose_) {
              std::cout << fmt::format(
                  " Branch misprediction: predicted taken but actually not taken\n");
            }
            predictor_->UpdateStrategy(op->pc,false); //更新为not taken
            PipeRecover(op->jump_pc); //恢复正确的pc
            mispredicted_branch_=true;
        }else{
            predictor_->UpdateStrategy(op->pc,true); //预测正确，继续保持
            history_.correct_branch_count++;
        }
    }else{ //预测not taken
        if(op->jump_pc == op->branch_target){ //预测错误
            if (verbose_) {
              std::cout << fmt::format(
                  " Branch misprediction: predicted taken but actually not taken\n");
            }
            predictor_->UpdateStrategy(op->pc,true); //更新为taken
            PipeRecover(op->jump_pc); //恢复正确的pc
            mispredicted_branch_=true;
        }else{
            predictor_->UpdateStrategy(op->pc,false); //预测正确，继续保持
            history_.correct_branch_count++;
        }
    }
  }
}
else{
  // control hazard to be solved after this cycle in simulate(), since that
  // means execute stage ends
  if (IsBranch(op->inst_type) || IsJump(op->inst_type)) {
    // record jump pc and update pc next cycle
    PipeRecover(op->jump_pc);
  }
}
  // data hazard for decode to detect
  data_hazard_execute_op_dest_ = op->dest_reg;

  /* remove from upstream stage and place in downstream stage */
  mem_op_ = std::move(execute_op_);
  execute_op_ = nullptr;
}

void FiveStageSimulator::MemoryAccess() {
  /* if there is no instruction in this pipeline stage, we are done */
  if (!mem_op_) {
    if (verbose_) {
      printf("Memory Access: Bubble\n");
    }
    return;
  }

  PipeOp* op = mem_op_.get();

  const int64_t& op2 = op->op2;
  const RegId& dest_reg = op->dest_reg;
  int64_t& out = op->out;
  const bool write_mem = op->write_mem;
  const bool read_mem = op->read_mem;
  const bool read_sign_ext = op->read_sign_ext;
  const uint32_t mem_len = op->mem_len;

  if (verbose_) {
    std::cout << fmt::format(
        "MemoryAccess instruction {:#010x} at address {:#x} as {}\n", op->inst,
        op->pc, op->inst_str);
  }

  data_hazard_mem_op_dest_ = dest_reg;

  if (write_mem) {
    switch (mem_len) {
      case 1:
        memory_->SetByte(out, op2);
        break;
      case 2:
        memory_->SetShort(out, op2);
        break;
      case 4:
        memory_->SetInt(out, op2);
        break;
      case 8:
        memory_->SetLong(out, op2);
        break;
      default:
        Panic("Unknown memLen %d\n", mem_len);
    }
   }
  

  if (read_mem) {
    switch (mem_len) {
      case 1:
        if (read_sign_ext) {
          out = (int64_t)SEXT<8>(memory_->GetByte(out));
        } else {
          out = (uint64_t)memory_->GetByte(out);
        }
        break;
      case 2:
        if (read_sign_ext) {
          out = (int64_t)SEXT<16>(memory_->GetShort(out));
        } else {
          out = (uint64_t)memory_->GetShort(out);
        }
        break;
      case 4:
        if (read_sign_ext) {
          out = (int64_t)SEXT<32>(memory_->GetInt(out));
        } else {
          out = (uint64_t)memory_->GetInt(out);
        }
        break;
      case 8:
        if (read_sign_ext) {
          out = (int64_t)memory_->GetLong(out);
        } else {
          out = (uint64_t)memory_->GetLong(out);
        }
        break;
      default:
        Panic("Unknown memLen %d\n", mem_len);
    }
  }

  // data hazard for decode to detect
  data_hazard_mem_op_dest_ = dest_reg;

  /* clear stage input and transfer to next stage */
  wb_op_ = std::move(mem_op_);
  mem_op_ = nullptr;
}

void FiveStageSimulator::WriteBack() {
  /* if there is no instruction in this pipeline stage, we are done */
  if (!wb_op_) {
    if (verbose_) {
      printf("WriteBack: Bubble\n");
    }
    return;
  }
  // no situation to stall

  /* grab the op out of our input slot */
  PipeOp* op = wb_op_.get();
  if (verbose_) {
    std::cout << fmt::format(
        "WriteBack instruction {:#010x} at address {:#x} as {}\n", op->inst,
        op->pc, op->inst_str);
  }

  /* if this instruction writes a register, do so now */
  // Real Write Back
  const RegId& dest_reg = op->dest_reg;
  if (dest_reg > 0) {
    regs_[dest_reg] = op->out;
  }

  // data hazard for decode to detect
  data_hazard_wb_op_dest_ = dest_reg;

  /* free the op automatically with unique_ptr */
  wb_op_.reset();
  wb_op_ = nullptr;
}

void FiveStageSimulator::PipeRecover(uint32_t dest_pc) {
  /* if there is already a recovery scheduled, it must have come from a later
   * stage (which executes older instructions), hence that recovery overrides
   * our recovery. Simply return in this case. */
  if (should_recover_branch_) return;

  /* schedule the recovery. This will be done once all pipeline stages simulate
   * the current cycle. */
  should_recover_branch_ = true;
  branch_next_pc_ = dest_pc;
}

void FiveStageSimulator::PrintStatistics() const {
  printf("------------ STATISTICS -----------\n");
  printf("Number of Instructions: %u\n", history_.inst_count);
  printf("Number of Cycles: %u\n", history_.cycle_count);
  printf("Avg Cycles per Instrcution: %.4f\n",
         (float)history_.cycle_count / history_.inst_count);
  printf("Number of Control Hazards: %u\n", history_.control_hazard_count);
  printf("Number of Data Hazards: %u\n", history_.data_hazard_count);
  printf("Branch Prediction Accuracy: %.2f%% (%u / %u)\n",
         history_.predicted_branch_count == 0
             ? 0.0f
             : (float)history_.correct_branch_count /
                   history_.predicted_branch_count * 100.0f,
         history_.correct_branch_count, history_.predicted_branch_count);
  printf("-----------------------------------\n");
}

std::string FiveStageSimulator::GetRegInfoStr() const {
  std::string str = "------------ CPU STATE ------------\n";
  str += fmt::format("PC: {:#x}\n", pc_);
  for (uint32_t i = 0; i < 32; ++i) {
    str += fmt::format("{}: {:#018x}({}) ", REGNAME[i], regs_[i], regs_[i]);
    if (i % 4 == 3) {
      str += "\n";
    }
  }
  str += "-----------------------------------\n";
  return str;
}

void FiveStageSimulator::DumpHistory() const {
  std::ofstream ofile("dump.txt");
  ofile << "================== Excecution History =================="
        << std::endl;
  for (uint32_t i = 0; i < history_.inst_record.size(); ++i) {
    ofile << history_.inst_record[i];
    ofile << history_.reg_record[i];
  }
  ofile << "========================================================"
        << std::endl;
  ofile << std::endl;

  ofile.close();
}
