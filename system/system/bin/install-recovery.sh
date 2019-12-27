#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ea6b575236379bedf0ab4559150d31626f1952fc; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:89786276398e762948568e2145c942aba3249bdf EMMC:/dev/block/bootdevice/by-name/recovery ea6b575236379bedf0ab4559150d31626f1952fc 67108864 89786276398e762948568e2145c942aba3249bdf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
