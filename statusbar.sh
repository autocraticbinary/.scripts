#!/bin/bash

time=$(date +"%Y-%m-%d << %H:%M:%S")
up=$(uptime)
bat=$(acpi -b | awk '{print $4}' | sed s/,//)
vol=$(pamixer --get-volume)

while true; do
    	xsetroot -name " BAT $bat | VOL $vol% | $time "
	sleep 1s
done
