#!/bin/bash

# Check if a directory is provided
if [ -z "$1" ]; then
  echo "Please provide a directory to backup."
  exit 1
fi

BACKUP_DIR="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Create a backup
tar -czf "$BACKUP_FILE" "$BACKUP_DIR"

echo "Backup created: $BACKUP_FILE"
