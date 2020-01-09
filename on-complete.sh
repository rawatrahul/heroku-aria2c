#!/bin/bash
if [[ -n $3 ]]; then
	rclone -v --config="rclone.conf" copy "$3" "heroku:$RCLONE_DESTINATION" 2>&1
fi
