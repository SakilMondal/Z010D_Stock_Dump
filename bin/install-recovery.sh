#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10553344:7ffbc63e679393afb64e460f04d6688c62c23e3a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10014720:e671f0ea53452b65eda0c0f01e76a6d30c165135 EMMC:/dev/block/bootdevice/by-name/recovery 7ffbc63e679393afb64e460f04d6688c62c23e3a 10553344 e671f0ea53452b65eda0c0f01e76a6d30c165135:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
