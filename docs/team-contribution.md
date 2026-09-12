# Team Contribution Guide (4-Member Team Structure)

## 1. Overview
The codebase structure is modularized to support parallel development across a four-member engineering team without merge conflicts.

## 2. Recommended Module Allocation

### Member 1: Process & CPU Management
- **Directory Scope**: `src/process/`, `src/cpu/`, `include/process_types.h`, `tests/process/`, `tests/cpu/`
- **Core Focus**: Process Control Block (PCB), process queues, CPU simulation ticks, FCFS, Round Robin, Priority Scheduling.

### Member 2: Memory & File System Management
- **Directory Scope**: `src/memory/`, `src/file_system/`, `include/memory_types.h`, `tests/memory/`, `tests/file_system/`
- **Core Focus**: Memory block fragmentation, allocation policies (First Fit, Best Fit, Worst Fit), virtual directory hierarchy and file operations.

### Member 3: Resource Allocation & Deadlock Management
- **Directory Scope**: `src/resource/`, `src/deadlock/`, `include/resource_types.h`, `tests/resource/`, `tests/deadlock/`
- **Core Focus**: Resource inventory tracking, Banker's Algorithm (safety check & request validation), cycle and deadlock detection.

### Member 4: Monitoring, UI, Logging & Database Integration
- **Directory Scope**: `src/monitoring/`, `src/logging/`, `src/database/`, `src/ui/`, `include/system_types.h`, `database/`, `tests/database/`
- **Core Focus**: Terminal user interface dashboard, real-time metric collection, centralized logging, and persistent data storage.

## 3. Collaboration Standards
- Module boundaries communicate solely via public header definitions in `include/` and module headers.
- Write unit tests under the corresponding `tests/<module>/` folder.
- Follow consistent code formatting (see `.clang-format` recommendations).
