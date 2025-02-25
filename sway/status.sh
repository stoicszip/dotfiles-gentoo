#!/bin/bash

# shows active window in swaybar, could also use .name instead of .app_id.
windowtitle=$(swaymsg -t get_tree 2>/dev/null | jq -r '..|try select(.focused == true).app_id' 2>/dev/null)

# shows time
date=$(date +'%X')

echo "$windowtitle | $date "
