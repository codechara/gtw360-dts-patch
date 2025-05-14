#!/bin/sh

dtc -I dtb -O dts -o tools/newfit.py.target ~/openwrt/bin/targets/imx/cortexa7/openwrt-imx-cortexa7-geniatech_gtw360-zImage
cd tools
python3 newfit.py
cp newfit.py.result ../custom.fit.dts
