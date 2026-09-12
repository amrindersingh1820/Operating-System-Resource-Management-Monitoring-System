# ==============================================================================
# Dockerfile: C Development Environment
# Operating System Resource Management & Monitoring System
# Multi-arch compatible: linux/arm64 (Apple Silicon) and linux/amd64 (Intel/AMD)
# ==============================================================================

FROM debian:bookworm-slim

# Non-interactive package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install GCC, Make, GDB, Valgrind, Clang-Format, and Git
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    make \
    gdb \
    valgrind \
    clang-format \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set working directory for the project mount
WORKDIR /workspace

# Default entrypoint starts interactive shell
CMD ["bash"]
