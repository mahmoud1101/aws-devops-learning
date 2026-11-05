#!/usr/bin/env bash

LOG_DIR="${1:-$HOME/logs-lab}"
CHECKER="$(dirname -- "$0")/check-log.sh"

if [ ! -d "$LOG_DIR" ]; then
  echo "Log folder not found."
  exit 1
fi

FOUND_LOG=0

for LOG_FILE in "$LOG_DIR"/*.log; do
  if [ ! -f "$LOG_FILE" ]; then
    continue
  fi
  FOUND_LOG=1
  echo "Checking: $LOG_FILE"
  bash "$CHECKER" "$LOG_FILE"
done

if [ "$FOUND_LOG" -eq 0 ]; then
  echo "No .log files found."
fi
