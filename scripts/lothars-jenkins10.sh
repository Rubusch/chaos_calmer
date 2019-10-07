#!/bin/bash -e
#export WORKSPACE=$(pwd)

echo "" > env.sh

echo "export DATETIME='$(date +%Y%m%d%H%M%S)'" >> env.sh
echo "export BUILDDISTRO='debian'" >> env.sh
echo "export BUILDARCH='amd64'" >> env.sh
echo "export BUILDDISTROVERSION='jessie'" >> env.sh
echo "export BUILDCHROOT='${WORKSPACE}/${BUILDDISTRO}-${BUILDARCH}-${BUILDDISTROVERSION}'" >> env.sh
echo "export OPENWRTDIR='${BUILDCHROOT}/openwrt'" >> env.sh
echo "export RELEASEDIR='/var/www/releases/${DATETIME}-openwrt'" >> env.sh
echo "export ARTIFACTDIR='${OPENWRTDIR}/bin/ramips'" >> env.sh

