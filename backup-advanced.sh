#!/bin/bash

##########
# CONFIG #
##########

# MySQL login information
mysql_username="root"
mysql_user_password=#"" #password here
mysql_db_name="techshareroom_wiki"

#Folder variables and files
site_folder="techshareroom_wiki"
dir_for_backups="/home/usuario/backups/techshareroom_wiki"
dir_to_be_backed_up="/var/www/html/techshareroom/techshareroom_wiki"
file_db_name="techshareroom_wiki_db_"
file_files_name="techshareroom_wiki_files_"
date=$(date +"%Y-%m-%d_%H-%M-%S")

# External server copy
external_server_name=#"" #username@IP
ssh_key_location="/home/usuario/keyname.key" #keyname

#########
# LOGIC #
#########

echo "Backuping the wiki! Data & DB. Please be patient..."

#1º Create the backup directories if needed, only executed first time
[ ! -d ${dir_for_backups} ] && mkdir ${dir_for_backups}

#2º Backup db
mysqldump -u${mysql_username} -p${mysql_user_password} ${mysql_db_name} | gzip > ${dir_for_backups}/${file_db_name}${date}.sql.gz

#3º Backup directory
tar cjf ${dir_for_backups}/${file_files_name}${date}.tbz --exclude ${dir_for_backups} ${dir_to_be_backed_up}

echo "Backup OK!"
echo 

#4º Copy files to another remote server
echo "Copying files to remote server. Please be patient..."
scp -i ${ssh_key_location} ${dir_for_backups}/${file_db_name}${date}.sql.gz ${external_server_name}:${dir_for_backups}
scp -i ${ssh_key_location} ${dir_for_backups}/${file_files_name}${date}.tbz  ${external_server_name}:${dir_for_backups}

#5º Remove files from main remote server
rm ${dir_for_backups}/${file_db_name}${date}.sql.gz
rm ${dir_for_backups}/${file_files_name}${date}.tbz

echo 
echo "All operationes DONE"