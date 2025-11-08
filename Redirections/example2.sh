#!/bin/bash

echo "Starting backup..." > log.txt
cp /etc/passwd /tmp/backup.txt >> log.txt 2>> error.log
echo "Backup completed!" >> log.txt
