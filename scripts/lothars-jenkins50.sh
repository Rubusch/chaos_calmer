#!/bin/bash -e

source env.sh

echo ">> building"

echo 'cp -f openwrt/20171229102809__chaos_calmer__dir615.config openwrt/.config ; cd ./openwrt && make -j5' | sudo tee -a  ${BUILDCHROOT}/executor.sh
sudo chmod 777 ${BUILDCHROOT}/executor.sh
sudo /usr/sbin/chroot ${BUILDCHROOT} ./executor.sh

echo ">> building READY."

