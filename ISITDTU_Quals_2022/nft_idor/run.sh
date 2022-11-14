#!/bin/sh
qemu-system-x86_64 \
    -m 1024 \
    -hda nft.qcow2 \
    -nographic \
    -smp 2 \
    -kernel bzImage \
    -append "root=/dev/sda ro console=ttyS0"