#include "speculative_tom_simulator.h"
#include "riscv.h"

#include <algorithm>
#include <cassert>
#include <fstream>
#include <iomanip>
#include <sstream>

using namespace RISCV;

TomasuloSimulator::TomasuloSimulator(const Options &opts) : Simulator(opts),
  enable_delay(opts.enable_delay),
  enable_predict(opts.enable_predict) {
  predictor_ = std::make_unique<BR_predict>(opts);
  InitHardware(opts);
}

void TomasuloSimulator::InitHardware(const Options &opts) {
  rob_.assign(opts.rob_size, RobEntry{});
  rs_alu_.assign(opts.rs_alu_size, RsEntry{});
  rs_mem_.assign(opts.rs_mem_size, RsEntry{});
  rs_mul_.assign(opts.rs_mulsize, RsEntry{});
  rst_.assign(32, RstEntry{});
  IQ_SIZE=opts.iq_size;
  inst_queue_.clear();
  cdb_results_.clear();
  rob_head_ = rob_tail_ = rob_count_ = 0;
}

// --------------------------------------------------------------------------
// 辅助函数 (部分实现)
// --------------------------------------------------------------------------

// 使用通用解码逻辑将指令解码到 InstEntry，便于 Tomasulo 数据结构使用
void TomasuloSimulator::DecodeInstEntry(InstEntry &inst, const Regs &regs) {
  PipeOp op{};
  op.pc = inst.pc;
  op.inst = inst.raw_inst;
  if(enable_predict) op.has_exception=true;
  DecodeInst(&op, regs);

  inst.inst_str = op.inst_str;
  inst.op_type = op.inst_type;
  inst.dest_reg = op.dest_reg;
  inst.rs1_reg = op.rs1;
  inst.rs2_reg = op.rs2;
  inst.immediate = op.offset;
  inst.pred_target_pc = op.branch_target;
  inst.has_exception= op.is_illegal;
  inst.exception_cause= op.is_illegal ? static_cast<uint32_t>(InstEntry::Exception::ILLEGAL_INSTRUCTION) : 0;
  if (op.inst_type == ECALL) {
    inst.rs1_reg = REG_A0;
    inst.rs2_reg = REG_A7;
    inst.dest_reg = REG_A0;
  }
}

std::string TomasuloSimulator::GetRegInfoStr() const {
  std::ostringstream oss;
  oss << "------------ CPU STATE ------------\n";
  oss << "PC: 0x" << std::hex << pc_ << std::dec << "\n";
  for (uint32_t i = 0; i < 32; ++i) {
    oss << REGNAME[i] << ": 0x" << std::setw(16) << std::setfill('0')
        << std::hex << regs_[i] << std::dec << "(" << regs_[i] << ") ";
    if (i % 4 == 3) {
      oss << "\n";
    }
  }
  oss << "-----------------------------------\n";
  return oss.str();
}

void TomasuloSimulator::DumpHistory() const {
  std::ofstream ofile("dump.txt");
  ofile << "================== Excecution History =================="
        << std::endl;
  const size_t paired =
      std::min(history_.inst_record.size(), history_.reg_record.size());
  for (size_t i = 0; i < paired; ++i) {
    ofile << history_.inst_record[i];
    ofile << history_.reg_record[i];
  }
  ofile << "========================================================"
        << std::endl;
  ofile << std::endl;
  ofile.close();
}

void TomasuloSimulator::PrintStatistics() const {
  printf("------------ STATISTICS -----------\n");
  printf("Number of Instructions: %u\n", history_.inst_count);
  printf("Number of Cycles: %u\n", history_.cycle_count);
  printf("Number of Control Hazards: %u\n", history_.control_hazard_count);
  if (history_.inst_count != 0) {
    printf("Avg Cycles per Instrcution: %.4f\n",
           (float)history_.cycle_count / history_.inst_count);
  }
  printf("Branch Prediction Accuracy: %.2f%% (%u / %u)\n",
         history_.predicted_branch_count == 0
             ? 0.0f
             : (float)history_.correct_branch_count /
                   history_.predicted_branch_count * 100.0f,
         history_.correct_branch_count, history_.predicted_branch_count);
  printf("-----------------------------------\n");
}

void TomasuloSimulator::ExecuteEntry(RsEntry &rs, MemoryManager *mem) {
  PipeOp op{};
  int rob_id = rs.dest_rob_id;
  op.pc = rob_[rob_id].pc;
  op.inst = rob_[rob_id].inst;
  op.inst_type = rob_[rob_id].op_type;
  if (RISCV::JType(op.inst_type)) {
    op.op1 = rs.a;
  }else
    op.op1 = rs.vj;
  // op2需要特殊处理
  if (RISCV::IType(op.inst_type)) {
    op.op2 = rs.a;
  } else
    op.op2 = rs.vk;
  op.offset = rs.a;
  // if (exit_ctrl) {
  //     printf("Program exit from an exit() system call\n");
  //     if (dump_history_) {
  //       printf("Dumping history to dump.txt...");
  //       DumpHistory();
  //     }
  //     PrintStatistics();
  //     exit(0);
  //   }
try {
          ExecuteInst(&op, &rob_[rob_id].exit_ctrl, mem);
    } catch (const std::runtime_error& e) {
        // 专门捕获 runtime_error，包括您的 "Unknown syscall type"
       op.ex_illegal=true;
       rob_[rob_id].has_exception=true;
        rob_[rob_id].exception_cause=static_cast<uint32_t>(RobEntry::Exception::ILLEGAL_EXE);
        
    } 
  if (IsReadMem(op.inst_type)) {
    rs.a = op.out;
    rob_[rob_id].read_mem = op.read_mem;
    rob_[rob_id].read_sign_ext = op.read_sign_ext;
    rob_[rob_id].mem_len = op.mem_len;
    rob_[rob_id].mem_address = op.out;
  } else if (IsWriteMem(op.inst_type)) {
    rs.a = op.out;
    rob_[rob_id].write_mem = op.write_mem;
    rob_[rob_id].mem_len = op.mem_len;
    rob_[rob_id].mem_address = op.out;
    rob_[rob_id].value = op.op2;
  } else if (IsBranch(op.inst_type)) {
    rob_[rob_id].branch = op.branch;
    rob_[rob_id].jump_pc = op.jump_pc;
    // printf("jmp %lx-pc:%lx\n",rob_[rob_id].jump_pc,rob_[rob_id].pc);
  } else if (IsJump(op.inst_type)) {
    rob_[rob_id].branch = op.branch;
    rob_[rob_id].jump_pc = op.jump_pc;
    rob_[rob_id].value = op.out;
    // printf("jmp %lx-pc:%lx\n",rob_[rob_id].jump_pc,rob_[rob_id].pc);
  } else {
    rob_[rob_id].value = op.out;
  }
}
bool TomasuloSimulator::IsRobFull() const { return rob_count_ >= ROB_SIZE; }

int TomasuloSimulator::AllocateRobEntry() {
  if (IsRobFull())
    return -1;

  int id = rob_tail_;
  rob_tail_ = (rob_tail_ + 1) % ROB_SIZE;
  rob_count_++;

  // 确保分配的条目是干净的
  if (verbose_) {
  printf("AllocateRobEntry:%d\n",id);}
  rob_[id] = RobEntry{};
  rob_[id].busy = true;

  return id;
}

std::vector<RsEntry> *TomasuloSimulator::GetRsVector(RISCV::InstType type) {
  // Instruction-to-reservation-station mapping [cite: 197]
  if (IsMulType(type)) {
    return &rs_mul_;
  } else if (IsMemType(type)) {
    return &rs_mem_;
  } else {
    return &rs_alu_; // All other instructions [cite: 200]
  }
}

int TomasuloSimulator::FindFreeRS(RISCV::InstType type) {
  std::vector<RsEntry> *rs_vec = GetRsVector(type);
  for (size_t i = 0; i < rs_vec->size(); ++i) {
    if (!(*rs_vec)[i].busy) {
      return (int)i;
    }
  }
  return -1;
}

void TomasuloSimulator::FlushPipeline(uint32_t correct_pc) {
  // 分支预测错误恢复 [cite: 161]
  if (verbose_) {
    printf("Branch Misprediction Detected! Flushing pipeline. New PC: 0x%x\n",
           correct_pc);
  }

  // 1. 清空 ROB 状态 [cite: 162]
  rob_tail_ = (rob_head_+1)%ROB_SIZE;
  rob_count_ = 1;
  for(int i=0;i<ROB_SIZE;i++){
    if(i!=rob_head_) rob_[i] = RobEntry{};
  }
  // 2. 清空所有 Reservation Stations [cite: 163]
  std::fill(rs_alu_.begin(), rs_alu_.end(), RsEntry{});
  std::fill(rs_mem_.begin(), rs_mem_.end(), RsEntry{});
  std::fill(rs_mul_.begin(), rs_mul_.end(), RsEntry{});

  // 3. 恢复 Register Status Table [cite: 164]
  std::fill(rst_.begin(), rst_.end(), RstEntry{});

  // 4. 清空 Instruction Queue
  inst_queue_.clear();

  // 5. 重启取指 [cite: 165]
  pc_ = correct_pc;
  history_.control_hazard_count++;
}

// --------------------------------------------------------------------------
// 阶段 0: Fetch - 取指
// --------------------------------------------------------------------------

void TomasuloSimulator::Fetch() {
  // 1. 如果 IQ 满了，阻塞取指
  while (inst_queue_.size() < IQ_SIZE) {
    // 2. 取指令
    uint32_t raw_inst = memory_->GetInt(pc_);
    
    // 3. 基础解码，填充 InstEntry
    InstEntry inst;
    inst.pc = pc_;
    inst.raw_inst = raw_inst;
    // 使用通用解码器填充指令字段
    DecodeInstEntry(inst, regs_); 
if (inst.has_exception) {
        pc_ = inst.pc;
        if (verbose_) {
      printf("Fetch: Fetched ILLEGAL_INSTRUCTION 0x%.8x at address 0x%lx\n", raw_inst,
             pc_);
    }

        return;
    }
    if (verbose_) {
      printf("Fetch: Fetched instruction 0x%.8x at address 0x%lx\n", raw_inst,
             pc_);
    }

    // 4. 应用分支预测 (Task 4)
  // control hazard (wait_for_branch_用于暂停本周期的取指）
  //分支预测逻辑
  if(enable_predict && IsPredicted(inst.op_type)){ //如果是分支指令，则进行分支预测
      if(predictor_->strategy(inst.pc)){
          inst.pred_taken = true;
          if (verbose_) {
            printf("(PC:0x%x)Branch prediction: taken,  Predicted target PC: 0x%x\n",inst.pc, inst.pred_target_pc);
          }
      }else{
          inst.pred_taken = false;
          if (verbose_) {
            printf("(PC:0x%x)Branch prediction: not taken,  Predicted target PC: 0x%x\n", inst.pc, inst.pred_target_pc);

          }
      }
      history_.predicted_branch_count++; //预测次数+1
  }

    // 5. 推入队列
    inst_queue_.push_back(inst);

    // 6. 更新 PC
    pc_ = inst.pred_taken ?inst.pred_target_pc:inst.pc+4;
  }
}

// --------------------------------------------------------------------------
// 阶段 1: Issue - 发射 (Dispatch / Rename)
// --------------------------------------------------------------------------

void TomasuloSimulator::Issue() {
  while (!inst_queue_.empty()) {
    // 1. 检查资源 (ROB/RS) [cite: 95, 96, 97]
    InstEntry inst = inst_queue_.front();
    if (inst.has_exception) continue;// 非法指令不进行发射，直到前面的正确结果得到后 进行清空指令槽
    int rs_idx = FindFreeRS(inst.op_type);
    if (rs_idx == -1)
      return; // RS 满，阻塞

    int rob_id = AllocateRobEntry();
    if (rob_id == -1)
      return; // ROB 满，阻塞

    // 2. 资源充足，正式发射
    inst_queue_.pop_front();

    // 3. 填充 ROB 条目 [cite: 103]
    RobEntry &rob_entry = rob_[rob_id];
    rob_entry.pc = inst.pc;
    rob_entry.inst = inst.raw_inst;
    rob_entry.op_type = inst.op_type;
    rob_entry.dest_reg = inst.dest_reg;
    rob_entry.state = RobEntry::State::Issue;
    // ROB [b].Ready <- false [cite: 119]
    rob_entry.inst_str = inst.inst_str;
    rob_entry.pred_taken = inst.pred_taken;
    // If the predictor predicted not-taken, the predicted next-PC would be
    // pc+4. Only when predicted taken should we use the branch target.
    rob_entry.pred_target_pc = inst.pred_taken ? inst.pred_target_pc
                           : inst.pc + 4;
    if (verbose_) {
      printf("Issue: Inst 0x%x dispatched to ROB[%d] and RS[%d].(PC:0x%x)\n",
             inst.raw_inst, rob_id, rs_idx,inst.pc);
    }

    // 4. 填充 RS 条目 [cite: 103, 118]
    RsEntry &rs = (*GetRsVector(inst.op_type))[rs_idx];
    rs = RsEntry{};
    rs.busy = true;
    rs.op_type = inst.op_type;
    rs.dest_rob_id = rob_id;
    rs.a = inst.immediate;   // RS[r].A <- imm [cite: 117]
    if(enable_delay){
    if (IsMulType(rs.op_type)) {
      // Task 3: 5 cycles total (1 base + 4 additional) [cite: 216]
      rs.remaining_cycles = 5;
    }else
      rs.remaining_cycles = 1; // 默认 1 周期，Execute 阶段会更新 M-EXT 延迟
  }
    // --- 5. 寄存器重命名和操作数获取 [cite: 105] ---

    auto fetch_operand = [&](RISCV::RegId reg_id, uint64_t &v_field,
                             int &q_field) {
      if (reg_id == 0) {
        v_field = 0;
        q_field = -1;
        return;
      }

      // 检查 RST [cite: 106]
      int h = rst_[reg_id].reorder_rob_id;
      if (rst_[reg_id].busy && h != -1) {
        if (rob_[h].ready) {
          // Operand is ready in ROB [cite: 108]
          v_field = rob_[h].value;
          q_field = -1;
        } else {
          // Operand pending, record ROB tag [cite: 110]
          q_field = h;
        }
      } else {
        // Operand is ready in register file [cite: 111]
        v_field = regs_[reg_id];
        q_field = -1;
      }
    };
    if (TwoOP(inst.op_type) || OneOP(inst.op_type)){
      if (verbose_) {
      printf("Issue: Fetching op1 for instruction 0x%x.\n",
             inst.raw_inst);}
      fetch_operand(inst.rs1_reg, rs.vj, rs.qj);
    }
    else {
      if (verbose_) {
      printf("Issue: No op1 for instruction 0x%x.\n",
             inst.raw_inst);}
      rs.vj = 0;
      rs.qj = -1;
    }
    if (TwoOP(inst.op_type)){
      if (verbose_) {
      printf("Issue: Fetching op2 for instruction 0x%x.\n",
             inst.raw_inst);}
      fetch_operand(inst.rs2_reg, rs.vk, rs.qk);
    }
    else{
      if (verbose_) {
            printf("Issue: No op2 for instruction 0x%x.\n",
             inst.raw_inst);}
      rs.vk = 0;
      rs.qk = -1;
    }

    // 6. 更新 RST (目标寄存器重命名) [cite: 112]
    if (inst.dest_reg != 0) {
      if (!IsBranch(inst.op_type) && !IsWriteMem(inst.op_type)) {
        // RegisterStat[rd].Reorder <- b [cite: 114]
        rst_[inst.dest_reg].reorder_rob_id = rob_id;
        // RegisterStat[rd].Busy <- true [cite: 115]
        rst_[inst.dest_reg].busy = true;
      }
    }

    // 记录指令文本，便于 DumpHistory
    std::ostringstream inst_oss;
    inst_oss << "0x" << std::setw(8) << std::setfill('0') << std::hex << inst.pc
             << std::dec << ": " << inst.inst_str << "\n";
    history_.inst_record.emplace_back(inst_oss.str());
  }
}

// --------------------------------------------------------------------------
// 阶段 2: Execute - 执行 (简化执行逻辑)
// --------------------------------------------------------------------------
void TomasuloSimulator::Execute() {
  auto process_rs = [&](std::vector<RsEntry> &rs_vec) {
    for (auto &rs : rs_vec) {
      if (!rs.busy)
        continue;

      // 检查 RAW 依赖是否解决 [cite: 125, 126]
      if (rs.qj != -1 || rs.qk != -1)
        continue;

      if (rob_[rs.dest_rob_id].state!=RobEntry::State::Issue)
        continue;
      
      // 计时器递减
    if(enable_delay){

      if (rs.remaining_cycles > 1) {
        rs.remaining_cycles--;
        continue;
      }
    }
      ExecuteEntry(rs, memory_.get());
      if(rob_[rs.dest_rob_id].has_exception && rob_[rs.dest_rob_id].exception_cause==static_cast<uint32_t>(RobEntry::Exception::ILLEGAL_EXE))
        rob_[rs.dest_rob_id].state=RobEntry::State::EXCPT;
      else 
        rob_[rs.dest_rob_id].state=RobEntry::State::Execute;
    }
  };
    auto CDB_rs = [&](std::vector<RsEntry> &rs_vec) {
    for (auto &rs : rs_vec) {
      if (rob_[rs.dest_rob_id].state!=RobEntry::State::Execute)
        continue;

    // --- 运算完成，准备广播结果 (rs.remaining_cycles == 1) ---
      bool execution_done = false;
      int rob_id = rs.dest_rob_id;
      uint64_t out = rob_[rob_id].mem_address;
      //检查mem的依赖

      if (rob_[rob_id].read_mem) {
        // Load Step 1: 地址计算 (rs.a 存有地址)
        // Load Step 2: 访问内存 (简化：跳过复杂的内存顺序检查) [cite: 128]
        bool flag=false;
       //在它之前发射但尚未提交
       for(int i=rob_head_;i!=rob_id;i=(i+1)%ROB_SIZE){
        if(rob_[i].busy && IsWriteMem(rob_[i].op_type) &&
          (rob_[i].state==RobEntry::State::Issue|| (rob_[i].mem_address==rob_[rob_id].mem_address))) {
          flag=true;
        }
       }
       if(flag) continue;
        switch (rob_[rob_id].mem_len) {
        case 1:
          if (rob_[rob_id].read_sign_ext) {
            out = (int64_t)SEXT<8>(memory_->GetByte(out));
          } else {
            out = (uint64_t)memory_->GetByte(out);
          }
          break;
        case 2:
          if (rob_[rob_id].read_sign_ext) {
            out = (int64_t)SEXT<16>(memory_->GetShort(out));
          } else {
            out = (uint64_t)memory_->GetShort(out);
          }
          break;
        case 4:
          if (rob_[rob_id].read_sign_ext) {
            out = (int64_t)SEXT<32>(memory_->GetInt(out));
          } else {
            out = (uint64_t)memory_->GetInt(out);
          }
          break;
        case 8:
          if (rob_[rob_id].read_sign_ext) {
            out = (int64_t)memory_->GetLong(out);
          } else {
            out = (uint64_t)memory_->GetLong(out);
          }
          break;
        default:
          Panic("Unknown memLen %d\n", rob_[rob_id].mem_len);
        }
        if (verbose_) {
        printf("MEM READ-inst:%s, pc:0x%lx, result:0x%lx\n",rob_[rob_id].inst_str.c_str(),rob_[rob_id].pc,out);
        }
        execution_done = true;
        rob_[rob_id].value = out;
      } else {
        execution_done = true;
      }

      if (execution_done) {
        // 标记 RS 执行完毕
        rs.remaining_cycles = 0;
        rs.busy = false; // 运算结束即可释放 RS
        
        // 结果就绪，推入 CDB 列表
        CdbResult cdb_res;
        cdb_res.valid = true;
        cdb_res.rob_id = rs.dest_rob_id;
        cdb_results_.push_back(cdb_res);
        rs=RsEntry{};
      }
    }
  };


  process_rs(rs_alu_);
  process_rs(rs_mem_);
  process_rs(rs_mul_);
  CDB_rs(rs_alu_);
  CDB_rs(rs_mem_);
  CDB_rs(rs_mul_);
}

// --------------------------------------------------------------------------
// 阶段 3: WriteResult - 写回 (CDB 广播)
// --------------------------------------------------------------------------

void TomasuloSimulator::WriteResult() {
  // CDB 广播所有结果 [cite: 140]
  for (const auto &cdb_res : cdb_results_) {
    if (!cdb_res.valid)
      continue;

    int b = cdb_res.rob_id;
    if (b == -1 || !rob_[b].busy)
      continue;

    rob_[b].ready = true;
    rob_[b].state = RobEntry::State::Write;

    
  // control hazard to be solved after this cycle in simulate(), since that
  // means execute stage ends
  if (enable_predict && IsPredicted(rob_[b].op_type)) {
    //这里在分支预测正确的情况下，不进行任何操作
    //否则排空流水线
    if(rob_[b].pred_taken){ //预测taken
        if(rob_[b].jump_pc != rob_[b].pred_target_pc){ //预测错误
            if (verbose_) {
              std::cout << " Branch misprediction: predicted taken but actually not taken\n";
              printf(" (PC:0x%x)  Predicted target PC: 0x%lx, Actual next PC: 0x%x\n",
                     rob_[b].pc,rob_[b].pred_target_pc, rob_[b].jump_pc);
            }
            predictor_->UpdateStrategy(rob_[b].pc,false); //更新为not taken
            rob_[b].mispredicted=true;
        }else{
            predictor_->UpdateStrategy(rob_[b].pc,true); //预测正确，继续保持
            history_.correct_branch_count++;
        }
    }else{ //预测not taken
        if(rob_[b].jump_pc == rob_[b].pred_target_pc){ 
            predictor_->UpdateStrategy(rob_[b].pc,false); //预测正确，继续保持
            history_.correct_branch_count++;
        }else{//预测错误
            if (verbose_) {
              std::cout << " Branch misprediction: predicted not taken but actually taken\n";
              printf("  (PC:0x%x) Predicted target PC: 0x%lx, Actual next PC: 0x%x\n",
                     rob_[b].pc,rob_[b].pred_target_pc, rob_[b].jump_pc);
            }
            predictor_->UpdateStrategy(rob_[b].pc,true); //更新为taken
            rob_[b].mispredicted=true;
        }
    }
  }
else{
// 分支：检查预测是否正确
    if (IsBranch(rob_[b].op_type) || IsJump(rob_[b].op_type)) {
      if (rob_[b].jump_pc != rob_[b].pred_target_pc) {
        rob_[b].mispredicted = true;
      }
    }
}
    // Store: 实际的写操作在 Commit 阶段进行 [cite: 150]

    if (verbose_) {
      printf("WriteResult: ROB[%d] is ready with result 0x%lx.(PC:0x%lx)\n", b,
             rob_[b].value,rob_[b].pc);
    }

    // 2. 广播给所有 RS (更新 Qj, Qk) [cite: 144, 145, 146]
    auto broadcast_to_rs = [&](std::vector<RsEntry> &rs_vec) {
      for (auto &rs : rs_vec) {
        if (!rs.busy)
          continue;

        if (rs.qj == b) {
          rs.vj = rob_[b].value;
          rs.qj = -1;
        }
        if (rs.qk == b) {
          rs.vk = rob_[b].value;
          rs.qk = -1;
        }
      }
    };

    broadcast_to_rs(rs_alu_);
    broadcast_to_rs(rs_mem_);
    broadcast_to_rs(rs_mul_);
  }

  cdb_results_.clear();

}

// --------------------------------------------------------------------------
// 阶段 4: Commit - 提交
// --------------------------------------------------------------------------

void TomasuloSimulator::Commit() {
  // 只能从 ROB 头部提交 [cite: 152]
  if (rob_count_ == 0 || !rob_[rob_head_].busy)
    return;

  RobEntry &head = rob_[rob_head_];

  // 如果头部指令还未完成 (Not Ready)，阻塞提交 [cite: 153]
  if (!head.ready)
    return;
    // 特殊情况：程序退出指令 (ecall) [cite: 155]
  if (head.exit_ctrl) {
      printf("Program exit from an exit() system call\n");
      if (dump_history_) {
        printf("Dumping history to dump.txt...");
        DumpHistory();
      }
      PrintStatistics();
      exit(0);
    }
  // **Commit 阶段开始** (一次只允许提交一条指令 [cite: 204])
  // Case 2: Store instruction [cite: 166]
  if (head.write_mem) {
    switch (head.mem_len) {
    case 1:
      memory_->SetByte(head.mem_address,head.value);
      break;
    case 2:
      memory_->SetShort(head.mem_address,head.value);
      break;
    case 4:
      memory_->SetInt(head.mem_address,head.value);
      break;
    case 8:
      memory_->SetLong(head.mem_address,head.value);
      break;
    default:
      Panic("Unknown memLen %d\n", head.mem_len);
    }
    if (verbose_) {
    printf("MEM WRITE-inst:%s, pc:0x%lx, result:0x%lx\n",head.inst_str.c_str(),head.pc,head.value);
    }
    //   if (verbose_) {
  //   printf("Commit-Write Mem addr:0x%lx, value:0x%lx\n",head.mem_address,head.value);
  // }
}
  // Case 3: Register operation (ALU, LOAD) [cite: 170]
  if(W2Rd(head.op_type)){
    // Write result to architectural register file [cite: 171]
    RISCV::RegId d = head.dest_reg;
    if (d != 0) {
      regs_[d] = head.value;

      // Clear register status if this ROB entry is still tagged [cite: 172]
      if (rst_[d].reorder_rob_id == rob_head_) {
        rst_[d].busy = false;
        rst_[d].reorder_rob_id = -1;
      }
    }
    if (verbose_) {
    printf("Commit-Write Reg addr:%d, value:0x%lx\n",d,head.value);}
  }
  // Case 1: Branch instruction [cite: 157]
  if (IsBranch(head.op_type) || IsJump(head.op_type) ) {
    if (head.mispredicted) {
      // 分支预测错误，执行 Flush [cite: 161]
      if (verbose_) {
      printf("Commit:  Flushing pipeline-0x%lx.\n", head.jump_pc);}
      FlushPipeline(head.jump_pc);
    } else {
      // 分支预测正确 [cite: 158]
      // Free ROB entry [cite: 159]
    }
  }
  if (verbose_) {
    printf("Commit: ROB[%d] is ready with inst %s.(PC:0x%lx)\n", rob_head_,
            head.inst_str.c_str(),head.pc);
  }
  // 共同操作：释放 ROB 条目 [cite: 159, 169, 173]
  head.busy = false;

  rob_head_ = (rob_head_ + 1) % ROB_SIZE;
  rob_count_--;

  history_.inst_count++;
  
  
}

// --------------------------------------------------------------------------
// Run 循环 (主控制逻辑)
// --------------------------------------------------------------------------

void TomasuloSimulator::Run() {
  // Main Simulation Loop
  while (true) {
    // ... (省略你原有的边界检查和历史记录逻辑)


    // 2. 逆序执行流水线阶段
    // Commit 必须最先执行，确保状态是顺序更新的。
    Commit();
    WriteResult();
    Execute();
    Issue();
    Fetch();

    // ... (省略你原有的统计和调试逻辑)
    history_.cycle_count++;
    history_.reg_record.push_back(GetRegInfoStr());
    if (history_.reg_record.size() >= 100000) { // Avoid using up memory
      history_.reg_record.clear();
      history_.inst_record.clear();
    }
  }
}