/**
 * 1. Allocate an array and access it (loads into cache)
 * 2. Use cldemote to move cache lines to lower levels
 * 3. Access the data again to verify correctness
 */

#include "lib.h"

#define ARRAY_SIZE 128

int main() {
  print_s("CLDEMOTE Test Started: \n");

  int data[ARRAY_SIZE];
  print_s("\nInitializing array...\n");
  for (int i = 0; i < ARRAY_SIZE; i++) {
    data[i] = i * 2;
  }

  print_s("Reading values...\n");
  int sum1 = 0;
  for (int i = 0; i < 32; i++) {
    sum1 += data[i];
  }

  print_s("Sum of first 32 elements: ");
  print_d(sum1);
  print_s("\n");

  print_s("Demoting cache lines...\n");
  // assuming 64-byte cache lines
  for (int i = 0; i < 32; i += 16) {
    cldemote(&data[i]);
  }
  print_s("Cache lines demoted\n");

  print_s("Reading values after demotion...\n");
  int sum2 = 0;
  for (int i = 0; i < 32; i++) {
    sum2 += data[i];
  }
  print_s("Sum of first 32 elements (after demote): ");
  print_d(sum2);
  print_s("\n");

  if (sum1 == sum2) {
    print_s("[PASS]  Data integrity maintained after CLDEMOTE\n");

    int errors = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
      if (data[i] != i * 2) {
        errors++;
      }
    }

    if (errors == 0) {
      print_s("[PASS]  All values verified correct\n");
    } else {
      print_s("[ERROR] Found ");
      print_d(errors);
      print_s(" incorrect values\n");
    }
  } else {
    print_s("[ERROR] Sums don't match! Expected: ");
    print_d(sum1);
    print_s(", actual: ");
    print_d(sum2);
    print_s("\n");
  }

  print_s("\nTesting with writes and demote...\n");
  for (int i = 64; i < 96; i++) {
    data[i] = i * 3;
  }

  for (int i = 64; i < 96; i += 16) {
    cldemote(&data[i]);
  }

  int sum3 = 0;
  bool corrupted = false;
  for (int i = 64; i < 96; i++) {
    sum3 += data[i];
    if (data[i] != i * 3) {
      corrupted = true;
      print_s("[ERROR] Data corruption at index ");
      print_d(i);
      print_s("\n");
    }
  }
  if (!corrupted) {
    print_s("[PASS]  All values verified correct\n");
  }

  print_s("\nCLDEMOTE Test Completed!\n");
  exit_proc();

  return 0;
}
