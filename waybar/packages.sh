#!/bin/bash

# Get updates, remove empty lines
updates=$(checkupdates 2>/dev/null | grep -v '^$')

# Count updates safely
count=$(printf "%s\n" "$updates" | grep -c '.')

# Build tooltip (Waybar wants \r, not \n)
if [ "$count" -eq 0 ]; then
    tooltip="All packages up to date!"
else
    tooltip=$(printf "%s" "$updates" | sed ':a;N;$!ba;s/\n/\r/g')
fi

# Emit valid JSON
printf '{"text":"%s","tooltip":"%s"}\n' "$count" "$tooltip"

