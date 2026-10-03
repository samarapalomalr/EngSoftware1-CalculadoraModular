#include "bib.hpp"

unsigned long long fat(int n) {
    if (n < 0) return 0;
    unsigned long long res = 1;
    for (int i = 1; i <= n; i++) {
        res *= i;
    }
    return res;
}