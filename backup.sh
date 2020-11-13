#!/bin/bash

backup_dir=/backup
ip_PC=$(hostname -i)

mkdir -p $backup_dir/$ip_PC

cd /

tar zchf $backup_dir/$ip_PC/data_$ip_PC-$(date "+%F"_week%w -d -1day).tar.gz ./var/spool/cron/root ./etc/rc.local ./server/scripts ./etc/sysconfig/iptables ./var/html/www ./app/logs

md5sum `find $backup_dir/$ip_PC/ -type f -mtime "-1" ! -name "*finger*"` >$backup_dir/$ip_PC/finger.txt

rsync -avz $backup_dir/ rsync_backup@172.16.1.41::backup --password-file=/etc/rsync.password01

\rm -f `find $backup_dir/ -type f -mtime +7`

