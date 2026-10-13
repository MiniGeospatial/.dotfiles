#!/bin/bash

updates=$(checkupdates 2>/dev/null | grep -v '^$')
count=$(printf '%s\n' "$updates" | grep -c '.')

if [ "$count" -eq 0 ]; then
    tooltip="All packages up to date!"
else
    tooltip="$updates"
fi

jq -nc --arg text "$count" --arg tooltip "$tooltip" \
    '{text: $text, tooltip: $tooltip}'
