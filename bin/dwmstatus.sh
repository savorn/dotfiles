#!/bin/bash
# script for dwm status


dte() {
	getDate=$(date +"%a %b %d, %I:%M %p")
	echo "$getDate"
}

batt() {
	batper=$(cat /sys/class/power_supply/BAT1/capacity)
	if [ $batper -ge 100 ]
		then
			echo " $batper%"
	elif [ $batper -lt 100 ] && [ $batper -ge 75 ]
		then
			echo " $batper%"
	elif [ $batper -lt 75 ] && [ $batper -ge 50 ]
		then
			echo " $batper%"
	elif [ $batper -lt 50 ] && [ $batper -ge 25 ]
		then
			echo " $batper%"
	elif [ $batper -lt 25 ]
		then
			echo " $batper%"
	fi
}

vol() {
	volper=$(amixer get Master | grep 'Front Left:' | awk '{ print $5 }' | tr -d []%)
	if [ $volper -ge 100 ]
		then
			echo " $volper%"
	elif [ $volper -lt 100 ] && [ $volper -ge 50 ]
		then
			echo " $volper%"
	elif [ $volper -lt 50 ] && [ $volper -ge 10 ]
		then
			echo " $volper%"
	elif [ $volper -lt 10 ] && [ $volper -ge 0 ]
		then
			echo " $volper%"
	fi
}


mem() {
	memusage=$(free -h | grep 'Mem:' | awk '{ print $3 }')
	echo " $memusage"
}

disk() {
	diskspace=$(df -h . | grep '/home' | awk '{ print $4 }')
	echo " $diskspace"
}

wifi() {
	wifiper=$(cat /proc/net/wireless | grep 'wlp3s0' | awk '{ print $3 }' | tr -d .)
	wifiessid=$(/sbin/iwconfig wlp3s0 | awk '{ print $4 }' | grep "ESSID:" | tr -d ESSID:)
	if [ $wifiessid == 'off/any' ]
		then
			echo " down"
	else
		echo " $wifiper%"
	fi
}

while true;
do
	xsetroot -name "$(disk)  $(mem)  $(vol)  $(batt)  $(wifi)  $(dte)"
	sleep 2
done &
