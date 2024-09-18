#!/bin/bash

# Log file
LOG_FILE="system_monitor_$(date +"%Y%m%d_%H%M%S").log"

# Check system resources
echo "System Monitoring Report" > "$LOG_FILE"
echo "=========================" >> "$LOG_FILE"

# CPU Usage (using wmic for Windows)
echo "CPU Usage:" >> "$LOG_FILE"
wmic cpu get loadpercentage >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Disk Usage (df works in Git Bash)
echo "Disk Usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Memory Usage (using wmic for Windows)
echo "Memory Usage:" >> "$LOG_FILE"
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "System monitoring report saved to $LOG_FILE"

