#!/bin/bash
if [[ -n $3 ]]; then
	echo "aria2 parameters: $1 $2 $(dirname "$3")"
	rclone -v --config="rclone.conf" move "$(dirname "$3")" "heroku:$RCLONE_DESTINATION/"$(basename "$(dirname "$3")")""  --exclude="*.aria2"  --exclude="*.exe"  --exclude="*.nfo"  --exclude="*.txt"  2>&1
fi
