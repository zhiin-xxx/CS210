/**
 * Simple implementation of common library functions
 */

#include "lib.h"
#include <stdlib.h>
#include <stdint.h>

void print_d(int num) {
  asm("li a7, 2;"
      "scall");
}

void print_ll(long long num) {
  asm("mv a0, %0" ::"r"(num));
  asm("li a7, 6;"
      "scall");
}

void print_s(const char* str) {
  asm("li a7, 0;"
      "scall");
}

void print_c(char ch) {
  asm("li a7, 1;"
      "scall");
}

void exit_proc() {
  asm("li a7, 3;"
      "scall");
}

char read_char() {
  char result;
  asm("li a7, 4;"
      "scall");
  asm("addi %0, a0, 0" : "=r"(result));
  return result;
}

long long read_num() {
  long long result;
  asm("li a7, 5;"
      "scall");
  asm("addi %0, a0, 0" : "=r"(result));
  return result;
}
typedef struct {
  uint64_t regs[32];
  uint64_t mcause,mstatus,mepc;
} Context;
extern void trap_handler(Context* ctx);
extern bool cte_init(void(*handler)(Context*));
typedef struct parameters{
    int* arr;
    int len;
}para;
int find_min(int* arr, int len) {
  asm("li a7, 7;"
      "scall");

  int minvalue;
  asm("addi %0, a0, 0" : "=r"(minvalue));

    return minvalue;
}
