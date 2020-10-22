#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void sort(int* arr, unsigned size);

// insertion sort algorithm
void ref_sort(int* arr, unsigned size) {
  unsigned i, j;
  
  for (i = 1; i < size; ++i) {
    int val = arr[i];
    for (j = i; j > 0 && arr[j-1] > val; --j) {
      arr[j] = arr[j-1];
    }
    arr[j] = val;
  }
}

void check_arr(int* arr, unsigned size) {
  int* ref_arr = malloc(size * sizeof(int));
  memcpy(ref_arr, arr, size * sizeof(int));
  
  sort(arr, size);
  ref_sort(ref_arr, size);

  for (unsigned i = 0; i < size; ++i) {
    assert(arr[i] == ref_arr[i]);
    //printf("%d, ", arr[i]);
  }
  //printf("\n");
  
  free(ref_arr);
}

int main() {
  int arr1[] = {4, 6, -3, 5, 18};
  check_arr(arr1, 5);

  int arr2[] = {146, 45, 17, -2, -89, -189, -459};
  check_arr(arr2, 7);

  int arr3[] = { -56, - 56, -45, -12, -8, 4, 7, 12, 59, 4587};
  check_arr(arr3, 10);

  int arr4[] = { 16, 14 };
  check_arr(arr4, 0);
  check_arr(arr4, 1);
  check_arr(arr4, 2);

  return 0;
}
