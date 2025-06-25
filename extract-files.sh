#!/bin/sh

set -e

export DEVICE=millet-common
export VENDOR=samsung
./../$DEVICE/extract-files.sh $@
