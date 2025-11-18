

This project contains a shell script named backup_directory.sh which is used to back up any directory in a Linux system.
The script compresses the specified directory into a .tar.gz file and stores it inside a backup_folder directory located in the user's home directory, along with a timestamp.
This tool is helpful for:
Creating backups of important files and directories

Automating backups using cron jobs

Practicing Linux shell scripting and file handling

Features:

Accepts a directory path as an argument

Automatically creates a backup folder if it doesn't exist

Generates a compressed backup with timestamp

Displays success confirmation with saved file path
