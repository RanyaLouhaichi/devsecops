#!/bin/bash

# Define directories to clean
LOG_DIR="/var/log"
TEMP_DIR="/tmp"

# Cleanup log files (example: older than 7 days)
echo "Cleaning up log files in $LOG_DIR older than 7 days..."
find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec rm -f {} \;

# Cleanup temp files
echo "Cleaning up temporary files in $TEMP_DIR..."
find "$TEMP_DIR" -type f -mtime +1 -exec rm -f {} \;

echo "Cleanup completed at $(date)"
