#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):109051904:b42a9c6ba1827056975b09848be03677e88b875b; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:ca783980cd0485104fc5052e4e0d33fe5b2cde22 \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):109051904:b42a9c6ba1827056975b09848be03677e88b875b && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

