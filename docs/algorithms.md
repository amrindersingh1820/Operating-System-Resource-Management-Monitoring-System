# Algorithm Specifications

## 1. CPU Scheduling Algorithms (`src/cpu/scheduling/`)
The CPU scheduling engine implements three fundamental operating system scheduling policies:

### 1.1 First-Come, First-Served (FCFS)
- Non-preemptive scheduling.
- Processes are executed strictly in order of arrival in the ready queue.

### 1.2 Round Robin (RR)
- Preemptive scheduling driven by a configurable time quantum ($\tau$).
- Processes share the CPU in cyclic order; remaining execution time is placed back onto the ready queue.

### 1.3 Priority Scheduling
- Both non-preemptive and preemptive variants based on integer priority levels.
- Ties resolved via arrival order (FCFS).

---

## 2. Memory Allocation Strategies (`src/memory/allocation/`)
Contiguous memory partitioning algorithms to allocate incoming processes:

### 2.1 First Fit
- Allocates the first available free memory block that is large enough.

### 2.2 Best Fit
- Searches the entire free block list to find the smallest block that satisfies the allocation request, minimizing wasted space per allocation.

### 2.3 Worst Fit
- Allocates the largest available free block, leaving the largest possible remaining fragment.

---

## 3. Deadlock Management Algorithms (`src/deadlock/`)

### 3.1 Banker's Algorithm
- Deadlock avoidance mechanism evaluating safety states.
- Utilizes Available vector, Allocation matrix, Max matrix, and Need matrix ($Need[i][j] = Max[i][j] - Allocation[i][j]$).

### 3.2 Deadlock Detection
- Evaluates the system resource allocation graph for cycles or deadlock conditions among active processes.
