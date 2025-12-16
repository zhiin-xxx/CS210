#ifndef SRC_OPTIONS_
#define SRC_OPTIONS_

#include <CLI11/CLI11.hpp>
#include <cstdint>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
enum class BR_STRATEGY{
    NT,
    AT,
    OB,
    TB,
    PERCPT
};
inline static std::vector<std::string> pipeline_modes{"five-stage",
                                                      "speculative Tomasulo"};

struct Options {
  std::string input_file;
  std::string pipeline_mode = pipeline_modes[0];
  bool verbose = false;
  bool single_step = false;
  bool dump_history = false;
  bool enable_predict = false; // Enable branch prediction by default
  BR_STRATEGY branch_predict_policy = BR_STRATEGY::NT;
  uint32_t history_sz = 60;
  size_t table_sz =70;
  uint32_t threshold=8;
  //BHT2Bit
  size_t K=20;
  uint32_t memory_size = 100 * 1024 * 1024;
  uint32_t rs_alu_size = 4;
  uint32_t rs_mem_size = 2;
  uint32_t rs_mulsize = 4;
  uint32_t rob_size = 8;
  uint32_t iq_size = 8;
  bool enable_delay =false;
  static Options Parse(int argc, char **argv) {
    Options opts;

    CLI::App app{"RISC-V Simulator"};
    app.allow_extras(false);

    app.add_option("-i,--input", opts.input_file, "RISC-V ELF binary file")
        ->required()
        ->check(CLI::ExistingFile);
    app.add_flag("-v,--verbose", opts.verbose, "Enable verbose output");
    app.add_flag("-s,--single_step", opts.single_step,
                 "Enable single-step execution");
    app.add_flag("-d,--dump_history", opts.dump_history,
                 "Dump execution history to dump.txt");
    app.add_flag("-e,--enable_delay", opts.enable_delay,
                  "enable delay");
    app.add_option("--memory_size", opts.memory_size, "Memory size in bytes")
        ->default_val(opts.memory_size);
    app.add_option("--pipeline_mode", opts.pipeline_mode, "Pipeline mode")
        ->default_val(opts.pipeline_mode)
        ->check(CLI::IsMember(pipeline_modes));
    app.add_option("--RS_ALU_SIZE", opts.rs_alu_size, "Reservation Station size in bytes")
        ->default_val(opts.rs_alu_size);
    app.add_option("--RS_MEM_SIZE", opts.rs_mem_size, "Reservation Station size in bytes")
        ->default_val(opts.rs_mem_size);
    app.add_option("--RS_MUL_SIZE", opts.rs_mulsize, "Reservation Station size in bytes")
        ->default_val(opts.rs_mulsize);
    app.add_option("--ROB", opts.rob_size, "Reorder Buffer size in bytes")
        ->default_val(opts.rob_size);
    app.add_option("--IQ", opts.iq_size, "Instruction Queue size in bytes")
        ->default_val(opts.iq_size);
 
 app.add_flag("-p,--enable_predict", opts.enable_predict, "Enable predict");

      std::string branch_predict_policy_str = "Always Not Taken (NT)";
      std::map<std::string, BR_STRATEGY> branch_predict_map = {
          {"Always Not Taken (NT)", BR_STRATEGY::NT},
          {"Always Taken (AT)", BR_STRATEGY::AT},
          {"One-bit Predictor (1-Bit)", BR_STRATEGY::OB},
          {"Two-bit Predictor (2-Bit)", BR_STRATEGY::TB},
          {"Perceptron Predictor", BR_STRATEGY::PERCPT}
      };

  app.add_option("--branch_predict_policy", branch_predict_policy_str,
                "branch_predict policy: NT, or AT, or 1-Bit, or 2-Bit, or Perceptron")
      ->check(CLI::IsMember({"Always Not Taken (NT)", "Always Taken (AT)",
      "One-bit Predictor (1-Bit)","Two-bit Predictor (2-Bit)","Perceptron Predictor"}))
      ->default_val("Always Not Taken (NT)");
  app.add_option("--history_sz", opts.history_sz, "PercptBR:History register")
        ->default_val(opts.history_sz);
  app.add_option("--table_sz", opts.table_sz, "PercptBR:Table of Perceptions")
        ->default_val(opts.table_sz);
  app.add_option("--threshold", opts.threshold, "PercptBR:threshold of Weight")
        ->default_val(opts.threshold);
  app.add_option("--K", opts.K, "BHT2Bit:BHT entry nums")
        ->default_val(opts.K);
    try {
      app.parse(argc, argv);
    } catch (const CLI::ParseError &e) {
      exit(app.exit(e));
    }
   opts.branch_predict_policy = branch_predict_map[branch_predict_policy_str];

    return opts;
  }
};

#endif
