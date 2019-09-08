#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:0ab80bf5443a5ab5d69eeb60999e4519bd3e868a >/cache/recovery/last_install_recovery_status; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:cc00e44e3d5fbad21ae8e792a46d2ccb2add9a00 EMMC:/dev/block/bootdevice/by-name/recovery 0ab80bf5443a5ab5d69eeb60999e4519bd3e868a 67108864 cc00e44e3d5fbad21ae8e792a46d2ccb2add9a00:/system/recovery-from-boot.p >>/cache/recovery/last_install_recovery_status && echo "Installing new recovery image: succeeded" >>/cache/recovery/last_install_recovery_status || echo "Installing new recovery image: failed" >>/cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >>/cache/recovery/last_install_recovery_status
fi
