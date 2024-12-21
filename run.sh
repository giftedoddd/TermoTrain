#!/bin/bash

cleanup() {
    kill $(jobs -p) 2>/dev/null
    exit 0
}

PYTHON_SCRIPT="$(dirname "$(realpath "$0")")"/src/sound.py
trap cleanup SIGINT

while true; do
    sl &
    python3 "$PYTHON_SCRIPT" > /dev/null 2>&1 &
    wait
done
