#!/bin/bash
#pid=$(ps | rg wofi)
#if [ "${pid}" != "" ]; then
#	kill $($pid | cut -d " " -f 1)  
#	
#else
#	wofi --show drun
#fi
if [ "$(ps | rg wofi | rg '\d+' -o | head -n1)" != "" ]; then
	pid=$(eww get menu_pid)
	kill $pid
else
	wofi --show drun & pid=$!
        eww update menu_pid=$pid
fi 	
