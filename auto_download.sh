#!/bin/bash
# Script Name : auto_download.sh
# Description : Downloads a file from the internet and saves it in a predefined directory.
# Author      : Kartavya
# ====== VARIABLES ======
DOWNLOAD_URL="$1"                         # URL to download (argument)
DEST_DIR="$HOME/Downloads/auto_downloads" # Save folder
FILENAME=$(basename "$DOWNLOAD_URL")      # Extract filename from URL
# ====== CHECK INPUT ======
if [ -z "$DOWNLOAD_URL" ]; then
  echo "Usage: $0 <download_url>"
  exit 1
fi
# ====== CREATE DIRECTORY IF NEEDED ======
mkdir -p "$DEST_DIR"
# ====== DOWNLOAD USING wget ======
echo " Downloading file from: $DOWNLOAD_URL"
wget -q "$DOWNLOAD_URL" -O "${DEST_DIR}/${FILENAME}"
# ====== VERIFY AND OUTPUT ======
if [ $? -eq 0 ]; then
  echo " Download completed successfully!"
  echo "File saved to: ${DEST_DIR}/${FILENAME}"
else
  echo " Download failed. Please check the URL."
fi


