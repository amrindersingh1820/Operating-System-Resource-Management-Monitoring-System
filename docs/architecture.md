# Architecture Specification

## 1. Architectural Philosophy
The system follows a modular, layered architecture implemented purely in C. Each subsystem is encapsulated behind a clean public header interface (`include/` and module-specific headers in `src/`).

## 2. Layer Diagram

```
+-------------------------------------------------------------+
|             Terminal UI / Dashboard (src/ui/)               |
+-------------------------------------------------------------+
|               System Monitor (src/monitoring/)              |
+------------------------------+------------------------------+
| Process & CPU Management     | Memory & Storage Management  |
| - src/process/               | - src/memory/                |
| - src/cpu/scheduling/        | - src/file_system/           |
+------------------------------+------------------------------+
| Resource & Deadlock Engine   | Persistence & Logging        |
| - src/resource/              | - src/database/              |
| - src/deadlock/              | - src/logging/               |
+------------------------------+------------------------------+
|          Core Types & Utilities (include/ & src/utils/)     |
+-------------------------------------------------------------+
```

## 3. Module Breakdown
- **`src/process/`**: PCB management, queue structures (ready queue, wait queue).
- **`src/cpu/`**: Dispatcher logic, simulation ticks, and scheduling algorithms.
- **`src/memory/`**: Memory block management and partition allocation policies.
- **`src/resource/`**: System resource tracking and allocation matrices.
- **`src/deadlock/`**: Banker's safety algorithm and cycle detection.
- **`src/file_system/`**: Virtual directory tree and file descriptors.
- **`src/monitoring/`**: Aggregate utilization sensors and telemetry.
- **`src/logging/`**: Thread-safe formatted log output and diagnostic tracing.
- **`src/database/`**: Data persistence interface.
- **`src/ui/`**: Interactive menu-driven console dashboard.
- **`src/utils/`**: Helper routines, validation, and string utilities.
