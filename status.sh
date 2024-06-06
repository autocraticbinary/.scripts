#!/bin/sh

battery () {
	~/.scripts/battery
}

wifi () {
	~/.scripts/wifi
}

timedate () {
	date '+%I:%M:%S %p'
}

clock () {
	date +"%c"
}

lit () {
	brightnessctl | grep -oP '[^()]+%'
}

vol () {
	pamixer --get-volume
}


while :; do
	xsetroot -name "$(battery);$(wifi) << VOL $(vol) << LIT $(lit) << $(clock) "
	sleep 1s
done
