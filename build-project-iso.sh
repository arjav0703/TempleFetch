#!/bin/sh
# Packages Project/ into an ISO9660 disc image so QEMU can hand it to
# TempleOS as a second CD-ROM drive. Re-run after every code edit.
set -e
cd "$(dirname "$0")"

rm -f ProjectCD.ISO
hdiutil makehybrid -iso -joliet -o ProjectCD Project
echo "Built ProjectCD.ISO from Project/"
