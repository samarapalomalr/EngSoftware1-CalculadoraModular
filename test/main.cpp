#include <iostream>
#include <cassert>
#include "bib.hpp"

// Testes da Funcionalidade 1
void test_calcularFatorial() {
    assert(fat(0) == 1);
    assert(fat(1) == 1);
    assert(fat(3) == 6);
    assert(fat(5) == 120);
    std::cout << "-> Testes da funcionalidade Fatorial PASSARAM!" << std::endl;
}

// Testes da Funcionalidade 2
void test_somarParcelas() {
    assert(soma(7, -3) == 4);
    assert(soma(0, 0) == 0);
    assert(soma(10, 20) == 30);
    std::cout << "-> Testes da funcionalidade Soma PASSARAM!" << std::endl;
}

int main() {
    std::cout << "=== Executando Testes Regressivos ===" << std::endl;
    
    test_calcularFatorial();
    test_somarParcelas();
    
    std::cout << "=== Fim dos Testes: Todos os testes passaram! ===" << std::endl;
    return 0;
}