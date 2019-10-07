#!/bin/bash -e

source env.sh

echo ">> configuring chroot"

# TODO test which mounts are needed, try to avoid this!
sudo mount -o bind /proc ${BUILDCHROOT}/proc
sudo mount -o bind /dev ${BUILDCHROOT}/dev
sudo mount -o bind /dev/pts ${BUILDCHROOT}/dev/pts
sudo mount -o bind /sys ${BUILDCHROOT}/sys

sudo cp /etc/hosts ${BUILDCHROOT}/etc/hosts
sudo cp /etc/resolv.conf ${BUILDCHROOT}/etc/resolv.conf

sudo mv openwrt ${BUILDCHROOT}/

echo ">> configuring chroot READY."
