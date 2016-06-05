#!/bin/bash

cd /data/local/arch

if ! mountpoint -q dev; then
	mount -t proc /proc proc
        mount -t sysfs sys sys/
	mount -o bind /dev dev
        mount -o bind /dev/pts dev/pts
fi

chroot . /bin/bash -c "source /etc/profile; export HOME=/root; export TERM=linux; export LANG="en_US.UTF-8"; export LC_ALL="en_US.UTF-8"; clear; su -"

