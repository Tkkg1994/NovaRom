#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12775424:668234dcfe61897b0fd5ea9ecaeb8e530bc7fd16; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11476992:06d0686c0aac3a72752db3782d0c0801e86cc0ea EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 668234dcfe61897b0fd5ea9ecaeb8e530bc7fd16 12775424 06d0686c0aac3a72752db3782d0c0801e86cc0ea:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
