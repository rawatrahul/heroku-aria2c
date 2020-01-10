#!/bin/bash
if [[ -n $3 ]]; then
	echo "aria2 parameters: $1 $2 $3"
	rclone -v --config="rclone.conf" copy "$(dirname "$3")" "heroku:$RCLONE_DESTINATION" 2>&1
fi
