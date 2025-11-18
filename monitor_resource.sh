
#!/bin/bash
# Script Name : monitor_resources.sh
# Description : Logs CPU and memory usage to a file at regular intervals.
# Author      : Kartavya
# ====== VARIABLES ======
LOG_FILE="$HOME/system_monitor.log"
INTERVAL=5   # Time interval in seconds between checks

# ====== HEADER ======
echo "----- System Monitoring Started at $(date) -----" >> "$LOG_FILE"

# ====== MONITOR LOOP ======
while true
do
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
  MEM_USAGE=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')

  echo "$TIMESTAMP | CPU: $CPU_USAGE | Memory: $MEM_USAGE" >> "$LOG_FILE"

  sleep $INTERVAL
done

