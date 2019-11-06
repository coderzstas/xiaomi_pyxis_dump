#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:812f0891341a0c183bbf739abfc822e4c039cb90 >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:2e1972f24d39d8a86ed88be524d524946871c475 EMMC:/dev/block/bootdevice/by-name/recovery 812f0891341a0c183bbf739abfc822e4c039cb90 67108864 2e1972f24d39d8a86ed88be524d524946871c475:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
