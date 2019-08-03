#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e246ed80292d27e543e452867a33f693c88a4fe9 >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:fa3e2b05bf667e424f1ef27b0cef33fe9bdc8d5b EMMC:/dev/block/bootdevice/by-name/recovery e246ed80292d27e543e452867a33f693c88a4fe9 67108864 fa3e2b05bf667e424f1ef27b0cef33fe9bdc8d5b:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
