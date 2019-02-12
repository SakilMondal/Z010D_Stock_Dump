#! /system/bin/sh
LOG_TAG="factory"
LOG_NAME="${0}:"
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}
logi "open factory"
factoryop=`getprop sys.config.factoryop`
logi "getprop"
logi "$factoryop" 
#open main mic
case "$factoryop" in
    "omainmic")
	    logi "open main mic"
		tinymix 'LOOPBACK Mode' 'ENABLE'
		tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'DEC1 MUX' 'ADC1'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC1 Volume' '6'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '95'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'Loopback MCLK' 'ENABLE'
    ;;
    "cmainmic")
		logi "close main mic"
		tinymix 'MICBIAS CAPLESS Switch' '0'
        tinymix 'DEC1 MUX' 'ZERO'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC1 Volume' '6'
        tinymix 'IIR1 INP1 MUX' 'ZERO'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'RX1 MIX1 INP1' 'ZERO'
        tinymix 'RX2 MIX1 INP1' 'ZERO'
        tinymix 'RDAC2 MUX' 'ZERO'
        tinymix 'HPHL' 'ZERO'
        tinymix 'HPHR' 'ZERO'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'Loopback MCLK' 'DISABLE'
		tinymix 'LOOPBACK Mode' 'DISABLE'
    ;;
	"oassmic")
		logi "Open assist MIC"
        tinymix 'LOOPBACK Mode' 'ENABLE'
		tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'DEC1 MUX' 'ADC2'
        tinymix 'ADC2 MUX' 'INP3'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC2 Volume' '6'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '95'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'Loopback MCLK' 'ENABLE'
	;;
	"cassmic")
	    logi "Close assist MIC"
        tinymix 'MICBIAS CAPLESS Switch' '0'
        tinymix 'DEC1 MUX' 'ZERO'
        tinymix 'ADC2 MUX' 'ZERO'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC2 Volume' '6'
        tinymix 'IIR1 INP1 MUX' 'ZERO'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'RX1 MIX1 INP1' 'ZERO'
        tinymix 'RX2 MIX1 INP1' 'ZERO'
        tinymix 'RDAC2 MUX' 'ZERO'
        tinymix 'HPHL' 'ZERO'
        tinymix 'HPHR' 'ZERO'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'Loopback MCLK' 'DISABLE'	
		tinymix 'LOOPBACK Mode' 'DISABLE'
	;;
	"oearmic")
	    logi "open HEADSET MIC"
		tinymix 'LOOPBACK Mode' 'ENABLE'
        tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'DEC1 MUX' 'ADC2'
        tinymix 'ADC2 MUX' 'INP2'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC2 Volume' '6'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '85'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'Loopback MCLK' 'ENABLE'
	;;
	"cearmic")
	    logi "close HEADSET MIC"
		tinymix 'MICBIAS CAPLESS Switch' '0'
        tinymix 'DEC1 MUX' 'ZERO'
        tinymix 'ADC2 MUX' 'ZERO'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC2 Volume' '6'
        tinymix 'IIR1 INP1 MUX' 'ZERO'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'RX1 MIX1 INP1' 'ZERO'
        tinymix 'RX2 MIX1 INP1' 'ZERO'
        tinymix 'RDAC2 MUX' 'ZERO'
        tinymix 'HPHL' 'ZERO'
        tinymix 'HPHR' 'ZERO'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'Loopback MCLK' 'DISABLE'
		tinymix 'LOOPBACK Mode' 'DISABLE'
	;;
	"openredled")
	    logi "open red led"
		echo 255 > /sys/class/leds/red/brightness
		echo 0 > /sys/class/leds/green/brightness
		echo 0 > /sys/class/leds/blue/brightness
		
	;;
	"opengreenled")
		logi "open green led"
		echo 0 > /sys/class/leds/red/brightness
		echo 255 > /sys/class/leds/green/brightness
		echo 0 > /sys/class/leds/blue/brightness
	;;
	"openblueled")
		logi "open blue led"
		echo 0 > /sys/class/leds/red/brightness
		echo 0 > /sys/class/leds/green/brightness
		echo 255 > /sys/class/leds/blue/brightness
	;;
	"closeall")
		logi "close all"
		echo 0 > /sys/class/leds/red/brightness
		echo 0 > /sys/class/leds/green/brightness
		echo 0 > /sys/class/leds/blue/brightness
	;;
	"chfile")
		logi "chmod file"
                chmod 775 /data/data/com.hqfactory.factory/files/SMMI_TestResult.txt
		chmod 775 /data/data/com.hqfactory.factory/files
		chmod 775 /data/data/com.hqfactory.factory
		chmod 775 /data/data/
		chmod 775 /data
	;;
esac
