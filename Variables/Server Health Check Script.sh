#!/bin/bash

# Variables
HOSTNAME=$(hostname)
DATE=$(date "+%Y-%m-%d %H:%M:%S")
CPU_LOAD=$(top -bn1 | grep "load average" | awk '{print $10 $11 $12}')
MEM_USAGE=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')
DISK_USAGE=$(df -h / | awk 'NR==2{print $5}')
LOGFILE="/var/log/server_health.log"

# Output
echo "[$DATE] Health check for $HOSTNAME" >> $LOGFILE
echo "CPU Load: $CPU_LOAD" >> $LOGFILE
echo "Memory Usage: $MEM_USAGE" >> $LOGFILE
echo "Disk Usage: $DISK_USAGE" >> $LOGFILE
echo "--------------------------------------" >> $LOGFILE

# Optional: Send alert if disk usage > 80%
DISK_PERCENT=$(echo $DISK_USAGE | tr -d '%')
if [ $DISK_PERCENT -gt 80 ]; then
    echo "ALERT: Disk usage is above 80% on $HOSTNAME" | mail -s "Disk Alert" admin@example.com
fi
