#!/bin/bash
if [[ -n $3 ]]; then
	echo "$3"
	rclone -v --config="rclone.conf" copy "$3" "heroku:$RCLONE_DESTINATION" 2>&1
fi
