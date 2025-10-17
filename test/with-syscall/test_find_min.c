#include "lib.h"
#include <stdint.h>
void test_find_min(int* arr, int len, int expected) {
  print_s("Array: [");
  for (int i = 0; i < len; i++) {
    print_d(arr[i]);
    if (i < len - 1) {
      print_s(", ");
    }
  }
  print_s("] => Min: ");
  // print_c('\n');
  // print_ll((uint32_t)arr);
  // print_c('\n');
  // print_d(len);
  // print_c('\n');

  int result = find_min(arr, len);
  print_d(result);

  if (result == expected) {
    print_s(" [PASS]\n");
  } else {
    print_s(" [FAIL] expected: ");
    print_d(expected);
    print_s("\n");
  }
}

int main() {
  
  print_s("=== Find Min Tests ===\n");

  int arr1[] = {5, 2, 8, 1, 9, 3};
  test_find_min(arr1, 6, 1);

  int arr2[5] = {-5, -2, -9,-8, -1};
  test_find_min(arr2, 5, -9);

  int arr3[] = {3, -7, 1, 9, -4, 12, 6, -8};
  test_find_min(arr3, 8, -8);

  int arr4[] = {42};
  test_find_min(arr4, 1, 42);

  int arr5[] = {7, 7, 7, 7};
  test_find_min(arr5, 4, 7);

  int arr6[] = {-100, 50, 30, 20};
  test_find_min(arr6, 4, -100);

  int arr7[] = {50, 30,  -100,20};
  test_find_min(arr7, 4, -100);

  int arr8[10] = {23, 45, 12, 67, 3, 89, 34, 56, 1, 78};
  test_find_min(arr8, 10, 1);

  print_s("=== All Tests Complete ===\n");

  exit_proc();
  return 0;
}
