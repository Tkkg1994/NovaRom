#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12775424:fbb106ddfabd7695cd0948323bb249e99109aeb1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11476992:dfe1a3b92033806fa24022f7cf7142aa8485bbe5 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery fbb106ddfabd7695cd0948323bb249e99109aeb1 12775424 dfe1a3b92033806fa24022f7cf7142aa8485bbe5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
