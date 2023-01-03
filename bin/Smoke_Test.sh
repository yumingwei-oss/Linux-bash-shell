#/bin/bash

adb get-state;

if [[ $? -ne 0 ]]; then
	echo "Please connect devices first"
	exit
else
	Clientidbase=`adb shell getprop ro.com.google.clientidbase`
	TierFlag=`adb shell pm list features | grep "com.google.android.tv"`
	AssistTriggering=`adb shell pm list features | grep 'GLOBAL_ASSIST_TRIGGERING'`
	Serial_Number=`adb shell getprop ro.boot.serialno`
	MAC=`adb shell ip -f link addr show wlan0 | grep link | awk '{printf $2}'`
	IPV6=`adb shell ip -6 addr ls wlan0 | grep inet6 | awk '{printf $2}'`
	OEMKEY=`adb shell getprop ro.oem.key1`
	AndroidID=`adb shell settings get secure android_id`
	amazonVersion=`adb shell dumpsys package $(adb shell pm list packages | grep amazon | cut -f 2 -d :) | grep versionName | cut -f 2 -d =`
	Fingerprint=`adb shell getprop ro.build.fingerprint`
	BuildID=`echo $Fingerprint | sed -n 's/\:user.*$// p' | sed -n 's/^.*\/// p'` 
fi
cat >/tmp/smoke.txt <<EOF
Fingerprint: $Fingerprint
BuildID: $BuildID
Clientidbase: $Clientidbase
TierFlag: $TierFlag
AssisTriggering: $AssistTriggering
SerialNumber: $Serial_Number
MAC: $MAC
IPV6: $IPV6
OEMKEY: $OEMKEY
AndroidID: $AndroidID
Amazon Version: $amazonVersion
EOF
