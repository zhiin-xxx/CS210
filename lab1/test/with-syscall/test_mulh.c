#include "lib.h"

void do_mulh(long long x1, long long x2, long long expected) {
  long long actual;
  asm("mulh %0, %1, %2" : "=r"(actual) : "r"(x1), "r"(x2));

  print_s("mul(");
  print_ll(x1);
  print_s(", ");
  print_ll(x2);
  print_s(") = ");
  print_ll(actual);

  if (actual == expected) {
    print_s(" [PASS]\n");
  } else {
    print_s(" [FAIL] expected: ");
    print_ll(expected);
    print_s("\n");
  }
}

int main() {
  print_s("mulh results:\n");
  // print_s("2 * 3 : ");
  do_mulh(0x0000000000000002LL, 0x0000000000000003LL, 0x0000000000000000LL);

  // print_s("-2 * -3 : ");
  do_mulh(0xfffffffffffffffeLL, 0xfffffffffffffffdLL, 0x0000000000000000LL);

  // print_s("4 * -5 : ");
  do_mulh(0x0000000000000004LL, 0xfffffffffffffffbLL, 0xffffffffffffffffLL);

  // print_s("0 * INT64_MAX : ");
  do_mulh(0x0000000000000000LL, 0x7fffffffffffffffLL, 0x0000000000000000LL);

  // print_s("INT64_MAX * INT64_MAX : ");
  do_mulh(0x7fffffffffffffffLL, 0x7fffffffffffffffLL, 0x3fffffffffffffffLL);

  // print_s("INT64_MIN * INT64_MIN : ");
  do_mulh(0x8000000000000000LL, 0x8000000000000000LL, 0x4000000000000000LL);

  // print_s("INT64_MIN * INT64_MAX : ");
  do_mulh(0x8000000000000000LL, 0x7fffffffffffffffLL, 0xc000000000000000LL);

  // print_s("INT64_MAX * 2 : ");
  do_mulh(0x7fffffffffffffffLL, 0x0000000000000002LL, 0x0000000000000000LL);

  // print_s("(2^32-1) * (2^32-1) : ");
  do_mulh(0x00000000ffffffffLL, 0x00000000ffffffffLL, 0x0000000000000000LL);

  // print_s("2^31 * 2^31 : ");
  do_mulh(0x0000000080000000LL, 0x0000000080000000LL, 0x0000000000000000LL);

  // print_s("-1 * -1 : ");
  do_mulh(-1LL, -1LL, 0x0000000000000000LL);

  // print_s("0x0123456789abcdef * 0xfedcba9876543210 : ");
  do_mulh(0x0123456789abcdefLL, 0xfedcba9876543210LL, 0xfffeb49923cc0953LL);

  // print_s("INT64_MAX * -1: ");
  do_mulh(0x7fffffffffffffffLL, -1LL, 0xffffffffffffffffLL);

  // INT64_MIN * -1
  // print_s("  INT64_MIN * -1: ");
  do_mulh(0x8000000000000000LL, -1LL, 0x0000000000000000LL);

  exit_proc();
}
