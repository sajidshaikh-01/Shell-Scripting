#!/bin/bash
# log_analyzer.sh <logfile> [out_report]
LOG="${1:-/var/log/syslog}"
OUT="${2:-./log_report.txt}"

if [[ ! -f "$LOG" ]]; then echo "Log not found: $LOG" && exit 1; fi

echo "Report for $LOG - $(date)" > "$OUT"
echo "---------------------------" >> "$OUT"
echo "Total lines: $(wc -l < "$LOG")" >> "$OUT"
echo "Errors: $(grep -i 'error' "$LOG" | wc -l)" >> "$OUT"
echo "Warnings: $(grep -i 'warn' "$LOG" | wc -l)" >> "$OUT"
echo "" >> "$OUT"
echo "Top 10 error messages:" >> "$OUT"
grep -i 'error' "$LOG" | sed 's/^[[:space:]]*//' | sort | uniq -c | sort -nr | head -n 10 >> "$OUT"
echo "" >> "$OUT"
echo "Top 10 IPs (if present):" >> "$OUT"
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$LOG" | sort | uniq -c | sort -rn | head -n 10 >> "$OUT"
