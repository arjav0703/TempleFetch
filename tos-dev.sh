#!/bin/sh
# Boots TempleOS from the installed hard disk (run tos-install.sh once first)
cd "$(dirname "$0")"
qemu-system-x86_64 \
  -hda "./templeos-hdd.img" \
  -cdrom "./ProjectCD.iso" \
  -boot c \
  -m 600
