#!/bin/bash
usage=$(df -h / | awk 'NR==2{print $5}' | sed 's/%//')

if [ $usage -gt 80 ]; then
  echo "CRITICAL - Disk usage at $usage%"
  exit 2
elif [ $usage -gt 60 ]; then
  echo "WARNING - Disk usage at $usage%"
  exit 1
else
  echo "OK - Disk usage at $usage%"
  exit 0
fi
