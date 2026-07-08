 proejct sets up Xilix yocto env based on "yocto-manifests" xml.

1. follow https://github.com/johannesneitzel/yocto-manifests#
2. source setup script: . setup.sh
3. $ bitbake qemu-helper-native (for qemu network tap devices)
4. $ sudo ./<path-to-layer>/poky/scripts/runqemu-gen-tapdevs $(id -g $USER) 4 (create 4 network tap devices)
5. $ bitbake petalinux-image-minimal (build image w. default MACHINE = "qemu-zynqmp")
6. $ runqemu nographic

note: How to create those fancy .patch files that alternate external souces (e.g. from libcap)? - run "devtool modify <recipe>" and follow workflow.