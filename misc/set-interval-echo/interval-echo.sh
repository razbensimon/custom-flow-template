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

start_time=$(date +%s)
stop_time=$((start_time + max_interval))

while true; do
    current_time=$(date +%s)
    if [ $current_time -ge $stop_time ]; then
        break
    fi

    echo "$(date +'%Y-%m-%d %H:%M:%S') $message"
    sleep $interval    
done
