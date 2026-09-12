# Operating System Resource Management & Monitoring System

## Short Project Description
The **Operating System Resource Management & Monitoring System** is an educational simulation framework developed entirely in the C language. It is designed to model, simulate, and observe core operating system mechanisms—including process scheduling, memory allocation, deadlock avoidance, resource management, file systems, and system telemetry—within a standardized, reproducible terminal environment.

## Current Project Status
**Current Status**: Initial Structure Setup

At this stage, the project directory layout, configuration files, documentation specifications, and cross-platform Docker development environment are established. Application logic and subsystem implementations will be integrated in subsequent phases.

---

## Directory Structure Explanation

```
OS-Resource-Management-System/
│
├── README.md                 # Project summary, status, and environment instructions
├── LICENSE                   # Open-source MIT license
├── .gitignore                # Git exclusions (build artifacts, secrets, OS files)
├── Dockerfile                # Multi-arch C development image (GCC, Make, GDB, Valgrind, Git)
├── docker-compose.yml        # Compose configuration mounting workspace for live editing
├── Makefile                  # Build and development automation targets
│
├── docs/                     # Architectural and design documentation
│   ├── project-overview.md   # Project scope and subsystem outlines
│   ├── architecture.md       # Layered system architecture specification
│   ├── database-design.md    # Storage and schema module plans
│   ├── algorithms.md         # Detailed algorithm specifications (CPU, Memory, Deadlock)
│   └── team-contribution.md  # Four-member team responsibility breakdown
│
├── src/                      # C source code and subsystem headers
│   ├── main.c                # Application entrypoint placeholder
│   ├── process/              # Process control block and process queue modules
│   ├── cpu/                  # CPU management and scheduling (FCFS, Round Robin, Priority)
│   ├── memory/               # Memory management and allocation (First, Best, Worst Fit)
│   ├── resource/             # Resource management and allocation tracking
│   ├── deadlock/             # Banker's algorithm and deadlock detection
│   ├── file_system/          # Virtual directory and file management
│   ├── monitoring/           # System, CPU, memory, and process telemetry
│   ├── logging/              # Centralized logging engine
│   ├── database/             # Database connection and query layer
│   ├── ui/                   # Terminal menu and dashboard interface
│   └── utils/                # Common helper and validation utilities
│
├── include/                  # Global shared type definitions and system configuration headers
│   ├── process_types.h       # Process-related data structures
│   ├── memory_types.h        # Memory block and partition structures
│   ├── resource_types.h      # Resource allocation and matrix definitions
│   ├── system_types.h        # System-wide metrics and state structures
│   └── config.h              # Global constants and runtime definitions
│
├── database/                 # Database initialization and seed scripts
│   ├── schema/               # Modular SQL schema placeholders
│   │   ├── 01_processes.sql  # Process history and state tables
│   │   ├── 02_memory.sql     # Memory block and allocation tables
│   │   ├── 03_resources.sql  # Resource inventory and allocation tables
│   │   ├── 04_files.sql      # Virtual filesystem tables
│   │   └── 05_logs.sql       # System log storage tables
│   └── seed/                 # Seed data scripts
│       └── sample_data.sql   # Initial baseline data for testing
│
├── tests/                    # Unit and integration test suites
│   ├── process/              # Tests for process and queue logic
│   ├── cpu/                  # Tests for CPU scheduling algorithms
│   ├── memory/               # Tests for memory allocation strategies
│   ├── resource/             # Tests for resource allocation logic
│   ├── deadlock/             # Tests for Banker's algorithm and deadlock detection
│   ├── file_system/          # Tests for virtual filesystem operations
│   └── database/             # Tests for database queries and persistence
│
├── config/                   # Runtime configuration files
│   └── system.conf           # System parameters and simulation settings
│
├── build/                    # Compiled binaries and object files (git-ignored)
│
└── logs/                     # Runtime log outputs (git-ignored)
```

---

## Basic Docker Setup Instructions

The Docker environment guarantees a consistent, cross-platform C development environment across **macOS (Apple Silicon & Intel)**, **Windows (WSL2 / Docker Desktop)**, and **Linux** without requiring local installation of GCC, Make, or other toolchains on your host machine.

### Prerequisites
- Docker Engine / Docker Desktop (v20.10+ recommended)
- Docker Compose (v2.0+ recommended)

### 1. Build the Development Environment
```bash
docker compose build
```

### 2. Start an Interactive Development Shell
To open a bash terminal inside the container with GCC, Make, GDB, and Valgrind ready:
```bash
docker compose run --rm dev bash
```
Your local project directory is mounted directly to `/workspace`. Any changes you make in your host editor will be instantly reflected inside the container.

### 3. Run Build Commands via Docker
You can execute commands directly without entering the interactive shell:
```bash
# Display Makefile help inside the container
docker compose run --rm dev make help

# Clean build artifacts inside the container
docker compose run --rm dev make clean
```

### 4. Format C Files
```bash
docker compose run --rm dev make format
```

---

## Basic Git Workflow Placeholder

```bash
# 1. Clone the repository
git clone <repository-url>
cd OS-Resource-Management-System

# 2. Check current status
git status

# 3. Create a feature branch for your assigned subsystem
git checkout -b feature/<module-name>

# 4. Stage and commit your changes
git add <files>
git commit -m "feat(<module>): add initial module structure"

# 5. Push to remote and open a Pull Request
git push origin feature/<module-name>
```
