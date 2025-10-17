/**
 * Simple implementation of common library functions
 */

#include "lib.h"

void do_rem(long long x1, long long x2) {
  long long reminder;
  asm("rem %0, %1, %2" : "=r"(reminder) : "r"(x1), "r"(x2));
  // asm("rem a6, %1, %2" : "=r"(reminder) : "r"(x1), "r"(x2));
  // asm("addi %0, a6, 0" : "=r" (reminder));
  print_d(reminder);
  print_s("\n");
}

int main() {
  long long x1, x2;

  x1 = 5, x2 = 3;
  do_rem(x1, x2);
  x1 = 72, x2 = 10;
  do_rem(x1, x2);
  x1 = 89, x2 = 9;
  do_rem(x1, x2);

  exit_proc();
}
