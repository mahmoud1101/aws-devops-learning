#!/usr/bin/env bash

LOG_FILE="$1"

if [ ! -f "$LOG_FILE" ] || [ ! -r "$LOG_FILE" ]; then
  echo "Please provide a readable log file."
  exit 1
fi

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
GREP_STATUS=$?

if [ "$GREP_STATUS" -gt 1 ]; then
  echo "Could not search the log."
  exit 1
fi

if [ "$ERROR_COUNT" -gt 0 ]; then
  echo "WARNING: Found $ERROR_COUNT error line(s) in the practice log."
else
  echo "No errors found in the practice log."
fi
