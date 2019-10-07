#!/bin/bash -e

source env.sh

echo ">> chroot apt packages"
set -x

sudo /usr/sbin/chroot ${BUILDCHROOT} /usr/bin/apt-get -y install  libncurses5-dev zlib1g-dev libssl1.0.0 gawk wget subversion git-core make gcc g++ build-essential flex binutils unzip python bzip2 libssl-dev
## ---
#sudo /usr/sbin/chroot ${BUILDCHROOT} /usr/bin/apt-get -y install git python sed wget cvs subversion git-core coreutils unzip texi2html texinfo docbook-utils gawk python-pysqlite2 diffstat help2man make gcc g++ build-essential chrpath flex libncurses5 libncurses5-dev zlib1g-dev pkg-config gettext libxml-simple-perl guile-1.8 cmake libssl-dev xsltproc fastjar mercurial pngcrush imagemagick tcl binutils bzip2 perl grep diffutils openjdk-7-jdk zlib1g zlib1g-dbg zlib1g-dev zlibc zlib-gst ccache distcc gcc-multilib g++-multilib bin86 libtool

#sudo /usr/sbin/chroot ${BUILDCHROOT} /usr/bin/apt-get -y install kernel-package xmlto
#sudo /usr/sbin/chroot ${BUILDCHROOT} /usr/bin/apt-get -y install tftpd-hpa tftp
#sudo /usr/sbin/chroot ${BUILDCHROOT} /usr/bin/apt-get -y install libssl1.0.0


echo ">> chroot apt packages READY."
