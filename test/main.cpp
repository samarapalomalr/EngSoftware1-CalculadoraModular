#include <iostream>
#include <cassert>
#include "bib.hpp"

void test_calcularFatorial() {
    assert(fat(0) == 1);
    assert(fat(1) == 1);
    assert(fat(3) == 6);
    assert(fat(5) == 120);
    std::cout << "-> Testes da funcionalidade Fatorial PASSARAM!" << std::endl;
}

int main() {
    std::cout << "=== Executando Testes Regressivos ===" << std::endl;
    test_calcularFatorial();
    std::cout << "=== Fim dos Testes ===" << std::endl;
    return 0;
}