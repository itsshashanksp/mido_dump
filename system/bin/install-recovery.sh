#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29267278:59d9e8a48a44fc80a0f50d97ad976118b0e43497; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26275146:f6228af73ce8b38d1dda63ae900c3c9d22f960c6 EMMC:/dev/block/bootdevice/by-name/recovery 59d9e8a48a44fc80a0f50d97ad976118b0e43497 29267278 f6228af73ce8b38d1dda63ae900c3c9d22f960c6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
