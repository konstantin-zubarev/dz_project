#!/bin/bash

fdate=`date +%Y-%m-%d`

gunzip -c {{ db_backup_path }}/$fdate/{{ mysql_db_name }}.sql.gz > {{ mysql_db_name }}.sql

mysql -e 'CREATE DATABASE {{ mysql_db_name }} DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;'

mysql -u root -p'{{ mysql_db_root_pass }}' {{ mysql_db_name }} < {{ mysql_db_name }}.sql

rm -f {{ mysql_db_name }}.sql

systemctl start db-backup.timer