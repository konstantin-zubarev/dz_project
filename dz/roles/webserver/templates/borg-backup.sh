#!/bin/bash
# Client and server name

CLIENT=borg
SERVER={{ ip_backup_server }}
TYPEOFBACKUP=www
REPOSITORY=$CLIENT@$SERVER:{{ dir_backup_path }}/$(hostname)-${TYPEOFBACKUP}
LOG="/var/log/borg_backup.log"

# Backup
borg create -v --stats --progres $REPOSITORY::"{now:%Y-%m-%d-%H-%M}" {{ dir_www_path }} 2>> $LOG

# Afterc backup
borg prune -v --list --dry-run --keep-daily=90 --keep-monthly=12 $REPOSITORY 2>> $LOG

