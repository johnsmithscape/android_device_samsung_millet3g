#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=millet3g
./../../$VENDOR/millet-common/extract-files.sh $@
