#!/bin/bash
# CPU load check

load=$(uptime | awk -F'load average:' '{ print $2 }' | cut -d',' -f1 | xargs | cut -d'.' -f1)

if [ $load -gt 4 ]; then
  echo "CRITICAL - CPU load is $load"
  exit 2
elif [ $load -gt 2 ]; then
  echo "WARNING - CPU load is $load"
  exit 1
else
  echo "OK - CPU load is $load"
  exit 0
fi
