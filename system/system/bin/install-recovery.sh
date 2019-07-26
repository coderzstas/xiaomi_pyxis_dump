#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:81754a5c8b59c646b620f93f0e2172189ab8b4fb >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:f9acf78a4f2bf6a679767e3416e54d09965ba19d EMMC:/dev/block/bootdevice/by-name/recovery 81754a5c8b59c646b620f93f0e2172189ab8b4fb 67108864 f9acf78a4f2bf6a679767e3416e54d09965ba19d:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
