#!/bin/bash -e

source env.sh

echo ">> setup chroot"

set -x
mkdir ${BUILDCHROOT}
cd ${BUILDCHROOT}


## TODO improve by docker approach

## full
#sudo debootstrap --arch ${BUILDARCH} ${BUILDDISTROVERSION} ${BUILDCHROOT} http://ftp.us.debian.org/debian/

## tuning
sudo debootstrap --arch ${BUILDARCH} --variant=minbase ${BUILDDISTROVERSION} ${BUILDCHROOT} http://ftp.us.debian.org/debian/
{ set +x ; } &> /dev/null

echo ">> setup chroot READY."

