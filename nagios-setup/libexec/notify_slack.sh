#!/bin/bash
webhook_url='https://hooks.slack.com/services/XXX/YYY/ZZZ'

message="$1"

curl -X POST -H 'Content-type: application/json'      --data "{\"text\":\":rotating_light: $message\"}"      "$webhook_url"
