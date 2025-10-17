#ifndef RISCV_SIMULATOR_LIB_H
#define RISCV_SIMULATOR_LIB_H

void print_d(int num);
void print_ll(long long num);
void print_s(const char* str);
void print_c(char ch);

void exit_proc();

char read_char();
long long read_num();

int find_min(int* arr, int len);

#endif
