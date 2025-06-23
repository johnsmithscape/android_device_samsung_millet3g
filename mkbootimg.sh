#!/bin/bash

KERNEL_DIR=$(dirname "$0")
KERNEL_IMAGE="/root/cm-12.1/device/samsung/millet3g/kernel/boot.img-kernel"
#RAMDISK_DIR="$OUT/root"
#DTB_IMAGE="$KERNEL_DIR/kernel/dtb"

BOOT_IMG="$OUT/boot.img"

mkbootimg \
  --kernel "$KERNEL_IMAGE" \
  --ramdisk "$RAMDISK_DIR" \
  --cmdline "console=ttyS0,115200n8" \
  --base 0x80000000 \
  --pagesize 2048 \
  --dt "$DTB_IMAGE" \
  --output "$BOOT_IMG"

if [ -f "$BOOT_IMG" ]; then
  echo "Boot image created: $BOOT_IMG"
else
  echo "Error: Failed to create boot.img!"
  exit 1
fi
