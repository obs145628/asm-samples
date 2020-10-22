#include <assert.h>

int fact(int x);

int ref_fact(int x) { return x <= 1 ? 1 : x * fact(x - 1); }

int main() {
  for (int i = 0; i < 16; ++i) {
    assert(fact(i) == ref_fact(i));
  }
  return 0;
}
