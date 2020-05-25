#!/usr/bin/env bash

### Check is puppet port in LISTENING state
state=$(ss -ntulp | grep 8140 | awk '{print $2}')
if [ ${#state} == 0 ]; then
    echo "CRITICAL - puppet port is not ready"
    exit 2

    elif [ $state == "LISTEN" ]; then
        echo "OK - puppet port is ready for connect"
        exit 0
    else
        echo "WARNING - bad output $state"
        exit 1
fi
