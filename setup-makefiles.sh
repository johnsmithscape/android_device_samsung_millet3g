#!/bin/bash

set -e

export VENDOR=samsung
export DEVICE=millet3g
./../../$VENDOR/millet-common/setup-makefiles.sh $@
