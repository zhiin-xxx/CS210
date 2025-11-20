#pragma once
#include <cstdint>
#include <vector>
#include <iostream>
#include "options.h"
class BHT2Bit {
public:
    BHT2Bit(size_t K=20) : K(K) {
        size_t words = (K + 15) / 16; 
        table.resize(words, 0xAAAAAAAA); 
    }

    bool predict(uint64_t pc) const {
        size_t idx = (pc/4) % K;
        uint8_t state = get_state(idx);
        return state >= 2; // 2 = Weakly Taken, 3 = Strongly Taken
    }
    // 更新
    void update(uint64_t pc, bool taken) {
        size_t idx = (pc/4) % K;
        uint8_t state = get_state(idx);
        if (taken) {
            if (state < 3) state++;
        } else {
            if (state > 0) state--;
        }
        set_state(idx, state);
    }

private:
    size_t K;
    std::vector<uint32_t> table; // 每个 uint32_t 存 16 个 entry
    uint8_t get_state(size_t idx) const {
        size_t word = idx / 16;
        size_t offset = (idx % 16) * 2;
        uint8_t state = (table[word] >> offset) & 0x3;
        // switch (state) {
        //     case 0: std::cout << "BHT idx=" << idx << " state=0 (Strongly Not Taken)\n"; break;
        //     case 1: std::cout << "BHT idx=" << idx << " state=1 (Weakly Not Taken)\n"; break;
        //     case 2: std::cout << "BHT idx=" << idx << " state=2 (Weakly Taken)\n"; break;
        //     case 3: std::cout << "BHT idx=" << idx << " state=3 (Strongly Taken)\n"; break;
        //     default: std::cout << "BHT idx=" << idx << " state=??\n"; break;
        // }
        return (table[word] >> offset) & 0x3; // 取 2 bit
    }
    void set_state(size_t idx, uint8_t state) {
        size_t word = idx / 16;
        size_t offset = (idx % 16) * 2;
        table[word] &= ~(0x3u << offset); // 清零原来的 2 bit
        table[word] |= (state & 0x3) << offset; // 写入新值
    }
};

class OneBitBR{
public:
    OneBitBR():history_(false) {};
    bool predict() const {
        return history_;
    }
    void update(bool taken) {
        history_ = taken;
    }
private:
    bool history_;
};
class PercptBR{
public:
    PercptBR(size_t history_sz=60,size_t table_sz=70,uint32_t thres=8) 
    : history_sz_(history_sz) ,
        table_sz_(table_sz),
        threshold_(thres) ,
        history_(0),
        y_last_(0),
        wtable_()
    {
        wtable_.resize(table_sz_, std::vector<int32_t>(history_sz_+1, 0));
    }

    bool predict(uint64_t pc) {
        size_t idx = (pc/4) % table_sz_;
        int32_t y_out=wtable_[idx][history_sz_];
        for(size_t i=0;i<history_sz_;i++){ //0位是最新分支
            int32_t h = ((history_ >> i) & 0x1) ? 1 : -1;
            y_out += wtable_[idx][i] * h;
        }
        y_last_=y_out;
        //  // 打印调试信息
        // std::cout << "[Predict] PC: " << pc
        //           << ", idx: " << idx
        //           << ", y_out: " << y_out
        //           << ", history: 0x" << std::hex << history_ << std::dec
        //           << ", prediction: " << (y_out>0 ? "Taken" : "Not Taken")
        //           << std::endl;
        return y_out>0;
    }
    // 更新
    void update(uint64_t pc, bool taken) {
        bool predicted= (y_last_>0 );
        size_t idx = (pc/4) % table_sz_;
        int32_t param= (taken ? 1 : -1);
        wtable_[idx][history_sz_]= wtable_[idx][history_sz_]+param;
        if(taken!=predicted || abs(y_last_)<threshold_){
            for(size_t i=0;i<history_sz_;i++){
                int32_t h = ((history_ >> i) & 0x1) ? 1 : -1;
                wtable_[idx][i]= wtable_[idx][i]+param*h;
            }
        }
        history_ = ((history_ << 1) | (taken ? 1 : 0)) & ((1ULL << history_sz_) - 1);
        //  // 打印更新信息
        // std::cout << "[Update] PC: " << pc
        //           << ", taken: " << (taken ? "T" : "N")
        //           << ", predicted: " << (predicted ? "T" : "N")
        //           << ", new history: 0x" << std::hex << history_ << std::dec
        //           << ", w0: " << wtable_[idx][history_sz_] << std::endl;
    }

private:
    size_t history_sz_;
    size_t table_sz_;
    uint32_t threshold_;
    uint64_t history_; //前一个周期的执行情况表1,2,3
    int32_t y_last_;
    std::vector<std::vector<int32_t>> wtable_; // 每个 perception12-62个权重 w0表示初始参数
};

class BR_predict{
public:
//跳转地址的计算在deocde阶段由模拟器完成
//分支预测只决定是否跳转
    BR_predict(const Options& opts)
    :strategy_(opts.branch_predict_policy)
     {
        OB_ = std::make_unique<OneBitBR>();
        TB_ = std::make_unique<BHT2Bit>(opts.K);
        PB_ = std::make_unique<PercptBR>(opts.history_sz, opts.table_sz, opts.threshold);

     };
    bool strategy(uint64_t pc){
        switch(strategy_){
            case BR_STRATEGY::NT:
                return NT_strategy();
            case BR_STRATEGY::AT:
                return AT_strategy();
            case BR_STRATEGY::OB:
                return OB_->predict();
            case BR_STRATEGY::TB:
                return TB_->predict(pc);
            case BR_STRATEGY::PERCPT:
                return PB_->predict(pc);
            default:
                return NT_strategy();
        }
    };
    void UpdateStrategy(uint64_t pc, bool taken){
        switch(strategy_){
            case BR_STRATEGY::OB:
                OB_->update(taken);
                break;
            case BR_STRATEGY::TB:
                TB_->update(pc, taken);
                break;
            case BR_STRATEGY::PERCPT:
                PB_->update(pc, taken);
                break;
            default:
                break;
        }
    }
private:
    bool NT_strategy() {return false;};
    bool AT_strategy() {return true;};
    BR_STRATEGY strategy_;
    //1-bit saturating counter
  std::unique_ptr<OneBitBR> OB_ = nullptr;
    //2-bit
  std::unique_ptr<BHT2Bit> TB_ = nullptr;
    //
  std::unique_ptr<PercptBR> PB_ = nullptr;

};