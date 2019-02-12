#!/system/bin/sh

idcode_status=`get_colorID`
echo "Color ID = $idcode_status"
setprop ro.config.idcode $idcode_status
