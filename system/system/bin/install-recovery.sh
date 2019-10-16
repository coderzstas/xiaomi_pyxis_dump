#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:99076500b225bcc3a29a22505ad798bb4f8352b5 >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:dea62806d9b432869fab779009f9051bb194c839 EMMC:/dev/block/bootdevice/by-name/recovery 99076500b225bcc3a29a22505ad798bb4f8352b5 67108864 dea62806d9b432869fab779009f9051bb194c839:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
