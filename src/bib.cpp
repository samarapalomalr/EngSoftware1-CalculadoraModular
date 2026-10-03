#include "bib.hpp"

// Funcionalidade 1: Fatorial
unsigned long long fat(int n) {
    if (n < 0) return 0;
    unsigned long long res = 1;
    for (int i = 1; i <= n; i++) {
        res *= i;
    }
    return res;
}

// Funcionalidade 2: Soma de Parcelas
int soma(int a, int b) {
    return a + b;
}