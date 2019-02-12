#!/system/bin/sh
uart_mode=`getprop persist.asus.audbg`

if [ "$uart_mode" == "0" ];then
		echo disuart > /proc/asusdebug
		setprop sys.config.uartlog 0		
else
		echo enuart > /proc/asusdebug
		setprop sys.config.uartlog 1
fi
