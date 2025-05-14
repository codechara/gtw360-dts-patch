#!/bin/bash

echo "Generating new fit DTS"
./genfit.sh

echo "Kernel dts..."
dtc -I dts custom.kernel.dts -o custom.kernel.dtb

echo "FIT..."
dtc -I dts custom.fit.dts -o custom.fit

echo "Copy on /run/media/chara/05A9-3A6B"
cp custom.fit /run/media/chara/05A9-3A6B
