#!/bin/bash
repo init -u https://github.com/johannesneitzel/yocto-manifests.git -b rel-v2025.2
repo sync -j4
echo 'source setupsdk'
source setupsdk
echo 'BB_NUMBER_THREADS = "4"' >> ./build/conf/local.conf
echo 'PARALLEL_MAKE = "-j 4"' >> ./build/conf/local.conf
#echo 'BBLAYERS += "${TOPDIR}/../sources/meta-custom-xilinx"' >> build/conf/bblayers.conf
echo 'Done! Now MACHINE (default is: "qemu-zynqmp") can be set in build/conf/local.conf and run bitbake.'