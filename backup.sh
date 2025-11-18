#!/bin/bash
# Script Name : backup_directory.sh
# Description : This script backs up a specified directory  to a backup folder with a timestamp
# Author      : Kartavya
# ====== VARIABLES ======
SOURCE_DIR="$1"                     # Directory to back up (given as argument)
BACKUP_DIR="$HOME/backup_folder"    # Backup folder location
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")  # Current date and time
BACKUP_NAME="backup_${TIMESTAMP}.tar.gz"

# ====== CHECK INPUT ======
if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: $0 <directory_to_backup>"
  exit 1
fi

# ====== CREATE BACKUP FOLDER IF MISSING ======
mkdir -p "$BACKUP_DIR"

# ====== CREATE BACKUP ======
tar -czf "${BACKUP_DIR}/${BACKUP_NAME}" "$SOURCE_DIR"

# ====== OUTPUT RESULT ======
echo "Backup of '$SOURCE_DIR' completed successfully!"
echo " Saved as: ${BACKUP_DIR}/${BACKUP_NAME}"


