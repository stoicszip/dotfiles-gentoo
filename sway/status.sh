#!/bin/bash

# shows time
date=$(date +'%X')

# shows active window in swaybar, if app_id == null, than the name will be selected.
windowtitle=$(swaymsg -t get_tree 2>/dev/null | jq -r '..|try select(.focused == true).app_id' 2>/dev/null)
windowtitle_name=$(swaymsg -t get_tree 2>/dev/null | jq -r '..|try select(.focused == true).name' 2>/dev/null)

if [ "$windowtitle" == 'null' ]; then
	echo "$windowtitle_name | $date "
else
	echo "$windowtitle | $date "
fi
