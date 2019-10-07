#!/bin/bash -e
##
## we unmount and remove the chroot folder, since it needs to be done as 'superuser'
## if the job fails before the following needs to be carried out manually
## otherwise, a new job won't be able to "clean" the workspace before built from 
## an old chroot e.g. with mounted kernel handles
##

source env.sh

echo ">> cleanup"

sudo umount -lf ${BUILDCHROOT}/proc
sudo umount -lf ${BUILDCHROOT}/dev/pts
sudo umount -lf ${BUILDCHROOT}/dev
sudo umount -lf ${BUILDCHROOT}/sys

if [[ -d "${BUILDCHROOT}" ]]; then
    if [[ "/" != "${BUILDCHROOT}" ]]; then
		sudo rm -rf ${BUILDCHROOT}
    fi
fi

echo ">> cleanup READY."
