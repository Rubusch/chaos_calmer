#!/bin/bash -e

source env.sh

echo ">> copy artifacts out of chroot"

mkdir -p ${RELEASEDIR}
cp -arf ${ARTIFACTDIR} ${RELEASEDIR}/

echo ">> copy artifacts out of chroot READY."
