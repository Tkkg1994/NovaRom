#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12775424:b6830ac2e08e2064c0443969614e5904574aa3df; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11476992:527d6be556ad39cf48b3f7332d872803cd13e32c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery b6830ac2e08e2064c0443969614e5904574aa3df 12775424 527d6be556ad39cf48b3f7332d872803cd13e32c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
