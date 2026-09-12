# Project Overview: Operating System Resource Management & Monitoring System

## 1. Introduction
The **Operating System Resource Management & Monitoring System** is an educational simulation framework developed entirely in the C language. It is designed to model, simulate, and observe core operating system mechanisms and resource management algorithms in a modular, reproducible environment.

## 2. Simulated Subsystems
The system is structured around the following primary modules:
1. **Process Management**: Process lifecycle, states (NEW, READY, RUNNING, WAITING, TERMINATED), and process control blocks (PCB).
2. **CPU Management & Scheduling**: Preemptive and non-preemptive CPU scheduling policies (FCFS, Round Robin, Priority Scheduling).
3. **Memory Management**: Contiguous and partitioned memory allocation strategies (First Fit, Best Fit, Worst Fit).
4. **Resource Management & Allocation**: Tracking system resources, claims, and dynamic allocation state.
5. **Deadlock Management**: Avoidance via Banker's Algorithm and resource allocation graph deadlock detection.
6. **File Management**: Virtual directory structure, file control blocks, and simulated filesystem operations.
7. **System Monitoring**: Metric collection for CPU utilization, memory pressure, and process execution state.
8. **System Logging**: Centralized event logging and subsystem diagnostics.
9. **Database Integration**: Persistence layer for recording historical metrics, logs, and state snapshots.
10. **Terminal User Interface**: Interactive terminal-based dashboard and menu system.

## 3. Development Environment
- **Language**: Standard C (C11 / C99).
- **Environment**: Docker containerized toolchain (GCC, Make, GDB, Git).
- **Cross-Platform**: Tested for macOS (Apple Silicon & Intel), Windows (WSL2 / Docker Desktop), and Linux.
