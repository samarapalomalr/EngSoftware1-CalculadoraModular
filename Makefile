# Compilador e Flags
CXX = g++
CXXFLAGS = -Wall -std=c++20 -Iinclude -Isrc

# Diretorios
SRC_DIR = src
INC_DIR = include
BIN_DIR = bin
TEST_DIR = test

# Arquivos da Aplicacao
APP_SRC = $(SRC_DIR)/main.cpp $(SRC_DIR)/bib.cpp
APP_TARGET = $(BIN_DIR)/main.exe

# Arquivos de Teste
TEST_SRC = $(TEST_DIR)/main.cpp $(SRC_DIR)/bib.cpp
TEST_TARGET = $(BIN_DIR)/testeRegressivo.exe

# Regra Padrao
all: setup $(APP_TARGET) $(TEST_TARGET)

# Garantir existencia da pasta bin
setup:
	mkdir -p $(BIN_DIR)

# Compilar Aplicacao Principal
$(APP_TARGET): $(SRC_DIR)/main.cpp
	@if [ -f $(SRC_DIR)/bib.cpp ]; then \
		$(CXX) $(CXXFLAGS) $(SRC_DIR)/main.cpp $(SRC_DIR)/bib.cpp -o $(APP_TARGET); \
	else \
		$(CXX) $(CXXFLAGS) $(SRC_DIR)/main.cpp -o $(APP_TARGET); \
	fi

# Compilar Testes Regressivos
$(TEST_TARGET): $(TEST_DIR)/main.cpp
	@if [ -f $(SRC_DIR)/bib.cpp ]; then \
		$(CXX) $(CXXFLAGS) $(TEST_DIR)/main.cpp $(SRC_DIR)/bib.cpp -o $(TEST_TARGET); \
	else \
		$(CXX) $(CXXFLAGS) $(TEST_DIR)/main.cpp -o $(TEST_TARGET); \
	fi

# Compilar Testes de forma explicita
test: setup $(TEST_TARGET)

# Limpeza
clean:
	rm -rf $(BIN_DIR)/*.exe $(BIN_DIR)/*.o $(BIN_DIR)/*.so $(BIN_DIR)/*.dll $(BIN_DIR)/*.a