#!/bin/bash
# script for dwm status


dte() {
	getDate=$(date +"%a %b %d, %I:%M")
	echo "$getDate"
}

batt() {
	batper=$(cat /sys/class/power_supply/BAT1/capacity)
	echo "batt $batper%"
}

vol() {
	volper=$(amixer get Master | grep 'Front Left:' | awk '{ print $5 }' | tr -d [])
	echo "vol $volper"
}

mem() {
	memusage=$(free -h | grep 'Mem:' | awk '{ print $3 }')
	echo "mem $memusage"
}

disk() {
	diskspace=$(df -h . | grep '/home' | awk '{ print $4 }')
	echo "hd $diskspace"
}

wifi() {
	wifiper=$(cat /proc/net/wireless | grep 'wlp3s0' | awk '{ print $3 }' | tr -d .)
	echo "wifi $wifiper%"
}

while true;
do
	xsetroot -name "$(disk) | $(mem) | $(vol) | $(batt) | $(wifi) | $(dte)"
	sleep 2
done &
