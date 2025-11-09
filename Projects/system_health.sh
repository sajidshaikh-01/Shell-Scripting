#!/bin/bash
# system_health.sh
LOG_FILE="/var/log/system_health.log"
DATE=$(date +"%F %T")

# Ensure log exists
sudo touch "$LOG_FILE" 2>/dev/null || touch "$LOG_FILE"
# CPU (percent used), Memory (percent used), Disk (percent used on /)
CPU_IDLE=$(top -bn1 | awk -F',' '/Cpu/ {print $4}' | awk '{print $1}')
CPU_USAGE=$(awk -v idle="$CPU_IDLE" 'BEGIN{printf("%.1f", 100 - idle)}')
MEM_USAGE=$(free -m | awk '/Mem:/ {printf("%.1f", $3/$2*100)}')
DISK_USAGE=$(df / | awk 'NR==2 {gsub(/%/,""); print $5}')

echo "[$DATE] CPU:${CPU_USAGE}% MEM:${MEM_USAGE}% DISK:${DISK_USAGE}%" | tee -a "$LOG_FILE"

CPU_LIMIT=80
MEM_LIMIT=90
DISK_LIMIT=85

if (( $(echo "$CPU_USAGE > $CPU_LIMIT" | bc -l) )); then
  echo "[$DATE] ALERT: High CPU ${CPU_USAGE}%" >> "$LOG_FILE"
fi
if (( $(echo "$MEM_USAGE > $MEM_LIMIT" | bc -l) )); then
  echo "[$DATE] ALERT: High MEM ${MEM_USAGE}%" >> "$LOG_FILE"
fi
if (( DISK_USAGE > DISK_LIMIT )); then
  echo "[$DATE] ALERT: High DISK ${DISK_USAGE}%" >> "$LOG_FILE"
fi
