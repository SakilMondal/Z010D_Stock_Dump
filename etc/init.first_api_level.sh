#!/system/bin/sh

product_device=$(getprop ro.product.device)
#add for ZC550KL 8916 1.0 CPU and 8939
if [ "$product_device" == "ASUS_Z010_CD" ] || [ "$product_device" == "ASUS_Z010_2" ]; then
	setprop  ro.product.first_api_level 23
#add for ZC550KL 8939 1.2 CPU
elif [ "$product_device" == "ASUS_Z010" ]; then
	setprop  ro.product.first_api_level 21
else
	setprop  ro.product.first_api_level 21
fi
