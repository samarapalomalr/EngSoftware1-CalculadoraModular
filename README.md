# Projeto C++ - Engenharia de Software 1 (UFOP)

Repositório estruturado segundo o GitFlow com suporte a Testes Automatizados (TDD), separação de interfaces e compilação modular via Makefile.

## Estrutura do Projeto
- `src/`: Código-fonte de implementação (`main.cpp`, `bib.cpp`, etc.).
- `include/`: Arquivos de cabeçalho / Interfaces (`.hpp` / `.h`).
- `bin/`: Binários e executáveis compilados.
- `test/`: Suíte de testes automatizados e regressivos.
- `doc/`: Documentação do projeto.

## Como Compilar e Executar
- **Aplicação Principal:** `make` ou `make app`
- **Executar Aplicação:** `./bin/main.exe`
- **Testes Regressivos:** `make test`
- **Executar Testes:** `./bin/testeRegressivo.exe`
- **Limpar Binários:** `make clean`