# Database Design Specification

## 1. Overview
The database layer provides persistent storage for simulation runs, process execution histories, memory allocations, resource matrices, and system event logs.

## 2. Planned Schema Modules
The database structure is organized into modular schema scripts located in `database/schema/`:
- **`01_processes.sql`**: Tracks process definitions, execution records, arrival, burst, and turnaround statistics.
- **`02_memory.sql`**: Records memory block configurations, allocations, and fragmentation metrics.
- **`03_resources.sql`**: Tracks resource inventories, allocations, and max-claim matrices for Banker's algorithm.
- **`04_files.sql`**: Stores virtual filesystem nodes, directory hierarchies, and metadata.
- **`05_logs.sql`**: Stores system-wide event logs with subsystem tagging and timestamps.

## 3. Seed Data
- **`database/seed/sample_data.sql`**: Provides baseline configuration records and sample simulation workloads for initial testing.

*Note: Database driver selection (e.g., SQLite, MySQL, or embedded key-value store) will be finalized during Phase 1 architecture alignment.*
