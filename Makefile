# Makefile for building a simple C project

# Compiler and flags
CC=gcc
CFLAGS=-Wall

# Source and build directories
SRC_DIR=./chapter1
BIN_DIR=./bin

# Target executable name
TARGET=$(BIN_DIR)/chapter1

# Default rule
all: $(TARGET)

# Rule for building the target
$(TARGET): $(SRC_DIR)/main.c
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $< -o $@

# Rule to run the target
run: $(TARGET)
	./$(TARGET)

# Clean rule
clean:
	rm -f $(TARGET)

.PHONY: all clean
