#/bin/bash

adb get-state;

if [[ $? -ne 0 ]]; then
	echo "Please connect devices first"
else
	Clientbase=`adb shell getprop ro.com.google.clientbase`
	TierFlag=`adb shell pm list features | grep "com.google.android.tv"`
	AssistTriggering=`adb shell pm list features | grep 'GLOBAL_ASSIST_TRIGGERING'`
	Serial_Number=`adb shell getprop ro.boot.serialno`
	MAC=`adb shell ip -f link addr show wlan0 | grep link | awk '{printf $2}'`
	IPV6=`adb shell ip -6 addr ls wlan0 | grep inet6 | awk '{printf $2}'`
	OEMKEY=`adb shell getprop ro.oem.key1`
	AndroidID=`adb shell settings get secure android_id`
	echo "The result is as follows"
	echo <<EOF
	HELLO WORLD
	YES
	EOF
fi
