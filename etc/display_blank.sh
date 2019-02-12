#!/system/bin/sh
shipping=$(getprop ro.boot.mode)

if [ $shipping = "user" ]
then
#	sleep 5
#	input keyevent 26
	am broadcast -a "asus.intent.action.FACTORY_SCREEN_OFF"
else
	echo "shipping mode not support blank event"
fi
