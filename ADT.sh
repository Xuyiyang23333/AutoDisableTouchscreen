#!/bin/env bash
while true
do
	a=$(xinput query-state 'Wacom HID 104 Pen Pen (0)' | grep -oE 'Proximity=In' | sed 's/Proximity=//g')
	if test -z $a
	then
		echo 'Enable touch!'
		xinput enable 'FTSC1000:00 2808:5012'
	else
		echo 'Disable touch!'
		xinput disable 'FTSC1000:00 2808:5012'
	fi
	sleep 0.5
done
