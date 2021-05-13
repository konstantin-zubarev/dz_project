#!/usr/bin/env bash

disk=$(fdisk -l | grep 5368 | awk -F ':' '{print $1}' | sed 's/\Disk \/dev//')

useradd -m borg
echo password | passwd borg --stdin
echo y | mkfs.ext4 /dev$disk
mkdir /backup/
echo /dev$disk       /backup/    ext4    defaults        0       1 >>/etc/fstab
mount -a
mkdir /backup/dir_site
mkdir /backup/db_site
chown -R borg:borg /backup/dir_site