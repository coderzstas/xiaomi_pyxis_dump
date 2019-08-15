#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b17ccdae8816c23dbf8c1d05391e0e7ae6084ba9 >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:6b54effafeb12f67f63b4f2106b2ae7279d61f90 EMMC:/dev/block/bootdevice/by-name/recovery b17ccdae8816c23dbf8c1d05391e0e7ae6084ba9 67108864 6b54effafeb12f67f63b4f2106b2ae7279d61f90:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
