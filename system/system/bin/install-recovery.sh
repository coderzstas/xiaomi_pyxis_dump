#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:dd9dfe814dda7dc039e6c92ec80850f33580ca8c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:a84c38fab3ae94e8dfd19fd21493bf67a9bb77cd EMMC:/dev/block/bootdevice/by-name/recovery dd9dfe814dda7dc039e6c92ec80850f33580ca8c 67108864 a84c38fab3ae94e8dfd19fd21493bf67a9bb77cd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
