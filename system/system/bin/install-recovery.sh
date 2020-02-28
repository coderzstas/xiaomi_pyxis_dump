#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3bb76034c126627ca9bac3f3627aef2fb3441311; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:37f99d9c46fa3fe1df17bd93ebe1110a48ae54e5 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3bb76034c126627ca9bac3f3627aef2fb3441311 && \
      log -t recovery "Installing new recovery image: succeeded" && \
        echo "Installing new recovery image: succeeded" > /cache/recovery/last_install_recovery_status || \
      (log -t recovery "Installing new recovery image: failed" && \
        echo "Installing new recovery image: failed" > /cache/recovery/last_install_recovery_status)
else
  log -t recovery "Recovery image already installed" && \
  echo "Recovery image already installed" > /cache/recovery/last_install_recovery_status
fi
