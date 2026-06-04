#!/bin/bash
repo init -u https://github.com/johannesneitzel/yocto-manifests.git -b rel-v2025.2
repo sync -j4
echo 'source setupsdk'
source setupsdk
echo '' >> ./conf/local.conf
echo '' >> ./conf/local.conf
echo '' >> ./conf/local.conf
echo '#custom mod' >> ./conf/local.conf
echo 'BB_NUMBER_THREADS = "4"' >> ./conf/local.conf
echo 'PARALLEL_MAKE = "-j 4"' >> ./conf/local.conf
echo '' >> ./conf/local.conf
echo 'SSTATE_DIR = "/home/tp/dev/yocto-shared/sstate-cache"' >> ./conf/local.conf
echo 'DL_DIR     = "/home/tp/dev/yocto-shared/downloads"' >> ./conf/local.conf
echo '' >> ./conf/local.conf
echo '#EXTRA_IMAGEDEPENDS += "u-boot"' >> ./conf/local.conf
echo '#QB_DEFAULT_BIOS = "u-boot.bin"' >> ./conf/local.conf
echo '' >> ./conf/local.conf
echo '#IMAGE_INSTALL:append = " kbd"' >> ./conf/local.conf
echo '#IMAGE_INSTALL:append = " hello-world"' >> ./conf/local.conf
echo '#IMAGE_INSTALL:append = " hello-world-test"' >> ./conf/local.conf
#echo 'BBLAYERS += "${TOPDIR}/../sources/meta-custom-xilinx"' >> build/conf/bblayers.conf
echo 'Done! Now MACHINE (default is: "qemu-zynqmp") can be set in build/conf/local.conf and run bitbake.'
