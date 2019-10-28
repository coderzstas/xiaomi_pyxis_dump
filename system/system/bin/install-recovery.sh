#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5d48c088e7b19c91e27896bf83fc234d0b533a50 >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:ecd408631f385938b926a7a8d6f93c313e0ebea4 EMMC:/dev/block/bootdevice/by-name/recovery 5d48c088e7b19c91e27896bf83fc234d0b533a50 67108864 ecd408631f385938b926a7a8d6f93c313e0ebea4:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
