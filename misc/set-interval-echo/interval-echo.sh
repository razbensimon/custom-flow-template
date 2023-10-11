#!/usr/bin/env bash

# usage:
# ./interval-echo.sh 1 30 "Hello"

if [ $# -ne 3 ]; then
    echo "Usage: $0 <interval_in_seconds> <max_interval_in_seconds> <custom_message>"
    exit 1
fi

interval=$1
max_interval=$2
message=$3

while true; do
    echo "$(date +'%Y-%m-%d %H:%M:%S') $message"
    sleep $interval
    if [ $interval -ge $max_interval ]; then
        break
    fi
done
