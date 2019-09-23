#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:68cbae4edebc0e6039b35beda2673cca16ef7d0c >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:0ed16f807596cecdfcd3650d59ce2f20b9e94fec EMMC:/dev/block/bootdevice/by-name/recovery 68cbae4edebc0e6039b35beda2673cca16ef7d0c 67108864 0ed16f807596cecdfcd3650d59ce2f20b9e94fec:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
