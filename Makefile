# ==============================================================================
# Makefile: Build Configuration Placeholder
# Operating System Resource Management & Monitoring System
# ==============================================================================

CC ?= gcc
CFLAGS ?= -Wall -Wextra -std=c11 -Iinclude -Isrc
BUILD_DIR ?= build
BIN_TARGET ?= $(BUILD_DIR)/os_simulator

.PHONY: all help clean format docker-build docker-shell docker-make

help:
	@echo "Operating System Resource Management & Monitoring System"
	@echo "Available commands:"
	@echo "  make help          - Display this help message"
	@echo "  make clean         - Remove compiled build artifacts"
	@echo "  make format        - Format C source and header files using clang-format"
	@echo "  make docker-build  - Build the Docker development image"
	@echo "  make docker-shell  - Start an interactive development shell in Docker"
	@echo "  make docker-make   - Run make inside the Docker container"

all:
	@echo "Project status: Initial Structure Setup (No application code compiled yet)."
	@echo "Implement modules in src/ before invoking the compilation pipeline."

clean:
	@echo "Cleaning build artifacts..."
	rm -rf $(BUILD_DIR)/*
	@touch $(BUILD_DIR)/.gitkeep
	@echo "Clean completed."

format:
	@which clang-format > /dev/null 2>&1 || (echo "clang-format not found. Run inside Docker container." && exit 1)
	find src include -name "*.[ch]" -exec clang-format -i {} +
	@echo "Formatting completed."

docker-build:
	docker compose build

docker-shell:
	docker compose run --rm dev bash

docker-make:
	docker compose run --rm dev make
