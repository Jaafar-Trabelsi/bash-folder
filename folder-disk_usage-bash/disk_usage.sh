#!/bin/bash

USAGE=80
LOG_FILE="$HOME/Documents/disk_usage.txt"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Log header with timestamp
echo "Disk Usage Check at $DATE" >> "$LOG_FILE"
echo "---------------------------------" >> "$LOG_FILE"

# Loop through each filesystem
# df -h : list disk usage in human-readable format
# awk 'NR>1 {print $1, $5, $6}' : skip header, get filesystem, usage %, mount point

df -h | awk 'NR>1 {print $1, $5, $6}' | while read filesystem usage mountpoint
do
    # Remove the '%' from usage using Bash string manipulation
    usep="${usage%\%}"

    # Log filesystem usage
    echo "Filesystem: $filesystem, Usage: $usage, Mounted on: $mountpoint" >> "$LOG_FILE"

    # Check if usage exceeds the threshold
    # tee -a $LOG_FILE : print warning to terminal AND append to log
    if [ "$usep" -ge "$USAGE" ]; then
        echo "WARNING: $filesystem on $mountpoint is ${usep}% full!" | tee -a "$LOG_FILE"
    fi
done

# Add a blank line in the log for readability
echo "" >> "$LOG_FILE"
