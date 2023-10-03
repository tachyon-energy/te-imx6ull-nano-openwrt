#
# Copyright (C) 2013-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=imx6ul
BOARDNAME:=Freescale i.MX 6 UL
FEATURES:=gpio rtc usb usbgadget squashfs targz boot-part rootfs-part
CPU_TYPE:=cortex-a7
CPU_SUBTYPE:=neon

KERNEL_PATCHVER:=5.10
KERNEL_TESTING_PATCHVER:=5.10


include $(INCLUDE_DIR)/target.mk

KERNELNAME:=zImage dtbs

DEFAULT_PACKAGES += uboot-envtools mkf2fs e2fsprogs blkid openssl-util lsblk pv gzip wget curl libgpiod luci luci-theme-openwrt-2020 luci-app-ttyd avahi-utils avahi-dbus-daemon

$(eval $(call BuildTarget))
