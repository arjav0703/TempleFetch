#!/bin/sh
# One-time: installs TempleOS from the boot CD onto templeos-hdd.img.
# When the installer asks "Install onto hard drive (y or n)?", answer YES,
cd "$(dirname "$0")"
qemu-system-x86_64 \
  -cdrom "./TempleOSCD.ISO" \
  -hda "./templeos-hdd.img" \
  -boot d \
  -m 600
