#! /system/bin/sh
LOG_TAG="factory"
LOG_NAME="${0}:"
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}
logi "audio test" 
audiotest=`getprop persist.asus.audiotest`
filepath=`getprop persist.asus.filepath`
logi "$audiotest" 
logi "$filepath" 
#open main mic
case "$audiotest" in
    "openspeaker")
	    logi "open speaker"
		tinymix 'RX2 Digital Volume' '80'
		tinymix 'ext spk amp' 'ENABLE'
        tinymix 'MI2S_RX Channels' 'One'
        tinymix 'RX2 MIX1 INP1' 'RX2'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHR' 'Switch'
        tinymix 'PRI_MI2S_RX Audio Mixer MultiMedia1' '1'
        tinyplay "$filepath" 1> /dev/null
        tinymix 'PRI_MI2S_RX Audio Mixer MultiMedia1' '0'
        tinymix 'HPHR' 'ZERO'
        tinymix 'RDAC2 MUX' 'ZERO'
        tinymix 'RX2 MIX1 INP1' 'ZERO'
        tinymix 'ext spk amp' 'DISABLE'
    ;;
    "openreceiver")
	    logi "open receiver"
	    tinymix 'RX1 Digital Volume' '95'
	    tinymix 'RX1 MIX1 INP1' 'RX1'
	    tinymix 'RDAC2 MUX' 'RX1'
	    tinymix 'EAR_S' 'Switch'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
        tinymix 'PRI_MI2S_RX Audio Mixer MultiMedia1' '1'
        tinyplay "$filepath" 1> /dev/null
        tinymix 'PRI_MI2S_RX Audio Mixer MultiMedia1' '0'
        tinymix 'EAR_S' 'ZERO'
        tinymix 'RDAC2 MUX' 'ZERO'
        tinymix 'RX1 MIX1 INP1' 'ZERO'
    ;;
    "openmainmictoheadset")
	    logi "open main mic to headset"
		tinymix 'LOOPBACK Mode' 'ENABLE'
        tinymix 'Loopback MCLK' 'ENABLE'
        tinymix 'DEC1 Volume' '80'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'DEC1 MUX' 'ADC1'
        tinymix 'ADC1 Volume' '8'
        tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'RX1 Digital Volume' '80'
        tinymix 'RX2 Digital Volume' '80'
        tinymix 'MI2S_RX Channels' 'Two'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
    ;;
	"openassistmictoheadset")
		logi "Open assist MIC to headset"
		tinymix 'LOOPBACK Mode' 'ENABLE'
        tinymix 'Loopback MCLK' 'ENABLE'
        tinymix 'DEC1 Volume' '80'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'IIR1 INP3 Volume' '84'
        tinymix 'DEC1 MUX' 'ADC2'
        tinymix 'ADC2 MUX' 'INP3'
        tinymix 'ADC2 Volume' '8'
        tinymix 'ADC3 Volume' '8'
        tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'RX1 Digital Volume' '80'
        tinymix 'RX2 Digital Volume' '80'
        tinymix 'MI2S_RX Channels' 'Two'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
	;;
	"openheadsetmictoheadset")
	    logi "open HEADSET MIC headset"
		tinymix 'LOOPBACK Mode' 'ENABLE'
        tinymix 'Loopback MCLK' 'ENABLE'
        tinymix 'DEC1 Volume' '80'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'IIR1 INP2 Volume' '84'
        tinymix 'DEC1 MUX' 'ADC2'
        tinymix 'ADC2 MUX' 'INP2'
        tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'ADC2 Volume' '8'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'MI2S_RX Channels' 'Two'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
	;;
	"openheadsetmictospeaker")
	    logi "open HEADSET MIC to speaker"
		tinymix 'LOOPBACK Mode' 'ENABLE'
        tinymix 'Loopback MCLK' 'ENABLE'
        tinymix 'DEC1 Volume' '80'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'IIR1 INP2 Volume' '84'
        tinymix 'DEC1 MUX' 'ADC2'
        tinymix 'ADC2 MUX' 'INP2'
        tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'ADC2 Volume' '8'
		tinymix 'ext spk amp' 'ENABLE'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
        tinymix 'MI2S_RX Channels' 'Two'
        tinymix 'RX1 MIX1 INP1' 'IIR1'
        tinymix 'RX2 MIX1 INP1' 'IIR1'
        tinymix 'RDAC2 MUX' 'RX2'
        tinymix 'HPHL' 'Switch'
        tinymix 'HPHR' 'Switch'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
	;;
	"openheadsetmictoreceiver")
	    logi "open HEADSET MIC to receiver"
		tinymix 'LOOPBACK Mode' 'ENABLE'
        tinymix 'Loopback MCLK' 'ENABLE'
        tinymix 'DEC1 Volume' '80'
        tinymix 'IIR1 INP1 MUX' 'DEC1'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'IIR1 INP2 Volume' '84'
        tinymix 'DEC1 MUX' 'ADC2'
        tinymix 'ADC2 MUX' 'INP2'
        tinymix 'MICBIAS CAPLESS Switch' '1'
        tinymix 'ADC2 Volume' '8'
	    tinymix 'RX1 Digital Volume' '84'
	    tinymix 'RX1 MIX1 INP1' 'IIR1'
	    tinymix 'RDAC2 MUX' 'RX1'
	    tinymix 'EAR_S' 'Switch'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
	;;
    "close")
		logi "close"
		tinymix 'DEC1 MUX' 'ZERO'
		tinymix 'IIR1 INP1 MUX' 'ZERO'
		tinymix 'ADC2 MUX' 'ZERO'
		tinymix 'MICBIAS CAPLESS Switch' '0'
		tinymix 'HPHL' 'ZERO'
		tinymix 'HPHR' 'ZERO'
		tinymix 'RDAC2 MUX' 'ZERO'
		tinymix 'RX1 MIX1 INP1' 'ZERO'
		tinymix 'RX2 MIX1 INP1' 'ZERO'
		tinymix 'MI2S_RX Channels' 'One'
		tinymix 'ext spk amp' 'DISABLE'
		tinymix 'EAR_S' 'ZERO'
        tinymix 'DEC1 Volume' '84'
        tinymix 'ADC1 Volume' '6'
        tinymix 'ADC2 Volume' '6'
        tinymix 'ADC3 Volume' '6'
        tinymix 'IIR1 INP1 Volume' '84'
        tinymix 'IIR1 INP2 Volume' '84'
        tinymix 'IIR1 INP3 Volume' '84'
        tinymix 'RX1 Digital Volume' '84'
        tinymix 'RX2 Digital Volume' '84'
	    tinymix 'EAR PA Gain' 'POS_6_DB'
		tinymix 'Loopback MCLK' 'DISABLE' 2> /dev/null
		tinymix 'LOOPBACK Mode' 'DISABLE'
    ;;
esac
