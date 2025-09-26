#!/bin/bash
# Simple MySQL connectivity check

HOST="localhost"
USER="nagios"
PASS="password"

mysql -h $HOST -u $USER -p$PASS -e "quit" >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "OK - MySQL is running"
  exit 0
else
  echo "CRITICAL - MySQL is not responding"
  exit 2
fi
