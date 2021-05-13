#!/usr/bin/env bash

date=$(borg list borg@{{ ip_backup_server }}:{{ dir_backup_path }}/$(hostname)-www | awk '{print $1}' | sort -rn | head -1)

#borg list borg@{{ ip_backup_server }}:{{ dir_backup_path }}/$(hostname)-www

borg mount borg@{{ ip_backup_server }}:{{ dir_backup_path }}/$(hostname)-www::$date /mnt/

#rm -rf /var/www/wordpress/*

cp -Rp /mnt/* /

borg umount /mnt

systemctl start borg-backup.timer