#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

#################################################
# Images
#################################################

DEVICE_VARS += MKUBIFS_OPTS UBOOT BOOT_SCRIPT


LS_SYSUPGRADE_IMAGE_SIZE = 249m

#################################################
# Devices
#################################################


KERNEL_LOADADDR=0x10008000

define Device/Default
  PROFILES := Default
  FILESYSTEMS := squashfs ext4
  KERNEL_INSTALL := 1
  KERNEL_SUFFIX := -zImage
  KERNEL_NAME := zImage
  KERNEL := kernel-bin | uImage none
IMAGES :=
endef



define Device/ev-imx6ul-nano-tira
  DEVICE_TITLE := EV-iMX6ULL-NANO-TIRA
  DEVICE_VENDOR := Evodbg
  DEVICE_MODEL := ev-imx6ul-nano-tira
  DEVICE_DTS := imx6ull-ev-nano-tira
    IMAGES := dtb
    IMAGE/dtb := install-dtb
    KERNEL := kernel-bin | install-dtb
endef
TARGET_DEVICES +=  ev-imx6ul-nano-tira


define Device/te-imx6ull-nano-cpu-v1
  DEVICE_TITLE := TE-iMX6ULL-NANO-CPU-V1
  DEVICE_VENDOR := Tachyon
  DEVICE_MODEL := te-imx6ull-nano-cpu-v1
  DEVICE_DTS := imx6ull-nano-cpu-v1
  FILESYSTEMS := squashfs ext4
  IMAGES := sysupgrade.bin dtb
  IMAGE/dtb := install-dtb
  KERNEL := kernel-bin | install-dtb
  IMAGE/sysupgrade.bin = sysupgrade-tar | append-metadata | supugrade


endef
TARGET_DEVICES += te-imx6ull-nano-cpu-v1

define Device/te-imx6ull-nano-cpu-v2
  DEVICE_TITLE := TE-iMX6ULL-NANO-CPU-V2
  DEVICE_VENDOR := Tachyon
  DEVICE_MODEL := te-imx6ull-nano-cpu-v2
  DEVICE_DTS := imx6ull-nano-cpu-v2
  FILESYSTEMS := squashfs ext4
  IMAGES := sysupgrade.bin dtb
  IMAGE/dtb := install-dtb
  KERNEL := kernel-bin | install-dtb
  IMAGE/sysupgrade.bin = sysupgrade-tar | append-metadata | supugrade


endef
TARGET_DEVICES += te-imx6ull-nano-cpu-v2


$(eval $(call BuildImage))
