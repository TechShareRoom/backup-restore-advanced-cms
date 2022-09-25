#!/bin/bash

##########
# CONFIG #
##########

# MySQL login information
mysql_username="" #root
mysql_user_password=""
mysql_db_name="" #techshareroom_wiki

site_folder="" #techshareroom_wiki
dir_for_backups="" #"/home/usuario/backups/techshareroom_wiki"
dir_to_be_backed_up="" #"/var/www/html/techshareroom_wiki"
time_for_deletion="" #5

#########
# LOGIC #
#########

echo "Backuping the wiki! Data & DB. Please be patient..."

#1º Create the backup directories if needed, only executed first time
[ ! -d ${dir_for_backups} ] && mkdir ${dir_for_backups}

#2º Backup db
mysqldump -u${mysql_username} -p${mysql_user_password} ${mysql_db_name} | gzip > ${dir_for_backups}/${site_folder}_db_$(date +%Y-%m-%d_%H-%M-%S).sql.gz

#3º Backup directory
tar cjf ${dir_for_backups}/${site_folder}_files_$(date +%Y-%m-%d_%H-%M-%S).tbz --exclude ${dir_for_backups} ${dir_to_be_backed_up}

echo "Backup OK! Now removing old bakups if proceed"

#4º Remove old backups
find ${dir_for_backups}/${site_folder}_* -mtime +${time_for_deletion} -exec rm {} \;

echo "All operationes DONE"