#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5b0f61da23625811d10e63ad4c5a2b6aa3a7b95c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:87dd8f0c50b4e69f87c47d23d4ec3aec44dd2aca EMMC:/dev/block/bootdevice/by-name/recovery 5b0f61da23625811d10e63ad4c5a2b6aa3a7b95c 67108864 87dd8f0c50b4e69f87c47d23d4ec3aec44dd2aca:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
