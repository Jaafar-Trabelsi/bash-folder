#!/bin/bash

# -------- CONFIG --------
SOURCE="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
DATE=$(date +%Y-%m-%d)
MAX_DAYS=7   # keep last 7 days
# ------------------------

# Creating today's backup folder
DEST="$BACKUP_DIR/$DATE"
mkdir -p "$DEST"

# Perform the backup with rsync
rsync -avh --delete "$SOURCE/" "$DEST/"
RSYNC_EXIT=$?

if [ $RSYNC_EXIT -eq 0 ]; then
    echo "Backup completed: $DEST"
else
    echo "Backup FAILED! (rsync exit code $RSYNC_EXIT)" >&2
    exit 1
fi

