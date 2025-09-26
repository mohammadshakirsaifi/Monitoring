#!/bin/bash
# HTTPS check using curl

if [ -z "$1" ]; then
  echo "Usage: $0 <hostname>"
  exit 3
fi

URL="https://$1"

response=$(curl -sk -o /dev/null -w "%{http_code}" $URL)

if [ "$response" -eq 200 ]; then
  echo "OK - HTTPS service is up ($response)"
  exit 0
else
  echo "CRITICAL - HTTPS check failed (code: $response)"
  exit 2
fi
