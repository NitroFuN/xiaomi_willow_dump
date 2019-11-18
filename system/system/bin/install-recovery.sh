#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:61d42ba5601ca62d4383763c9fb253fef416e886; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:607d9b2d4a8e406b764933fa470fe74bd96bef5b EMMC:/dev/block/bootdevice/by-name/recovery 61d42ba5601ca62d4383763c9fb253fef416e886 67108864 607d9b2d4a8e406b764933fa470fe74bd96bef5b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
