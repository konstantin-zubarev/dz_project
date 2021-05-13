#!/bin/bash
 
destination="{{ db_backup_path }}"
userDB="root"
passwordDB="{{ mysql_db_root_pass }}"
fdate=`date +%Y-%m-%d`
LOG="/var/log/db_backup.log"
 
find $destination -type d \( -name "*-1[^5]" -o -name "*-[023]?" \) -ctime +30 -exec rm -R {} \; 2>&1
find $destination -type d -name "*-*" -ctime +180 -exec rm -R {} \; 2>&1
mkdir $destination/$fdate 2>&1
 
for dbname in `echo show databases | mysql -u$userDB -p$passwordDB | grep -v Database`; do
    case $dbname in
        information_schema)
            continue ;;
        mysql)
            continue ;;
        performance_schema)
            continue ;;
        test)
            continue ;;
        *) mysqldump --databases --skip-comments -u$userDB -p$passwordDB $dbname | gzip > $destination/$fdate/$dbname.sql.gz ;;
    esac
done;