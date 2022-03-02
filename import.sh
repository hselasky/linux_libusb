#!/bin/sh

[ -d "$1" ] || echo "Please specify a valid FreeBSD source directory, /usr/src" && exit

set -e

cp -v $1/lib/libusb/* ./
cp -v $1/sys/compat/linux/linux_ioctl.h include/compat/linux/
cp -v $1/sys/dev/usb/usb_endian.h include/dev/usb/
cp -v $1/sys/dev/usb/usb_freebsd.h include/dev/usb/
cp -v $1/sys/dev/usb/usb.h include/dev/usb/
cp -v $1/sys/dev/usb/usbdi.h include/dev/usb/
cp -v $1/sys/dev/usb/usb_ioctl.h include/dev/usb/

