#!/bin/bash

##########
# CONFIG #
##########

# MySQL login information
mysql_username="" #root
mysql_user_password=""
mysql_db_name="" #techshareroom_wiki

database_file="" #techshareroom_wiki_db_2021-12-24_00-00-01.sql.gz"
database_file_uncompressed="" #techshareroom_wiki_db_2021-12-24_00-00-01.sql"
dir_file="" #techshareroom_wiki_files_2021-12-24_00-00-06.tbz"
dir_for_backups="" #/home/usuario/backups/techshareroom_wiki
dir_to_be_backed_up="" #/var/www/html/techshareroom_wiki

#########
# LOGIC #
#########

echo "Restoring the wiki! Data & DB. Please be patient..."

#1º Move to backup directory
cd ${dir_for_backups}

#2º Execute a file + db backup of actual status
./backup-advanced.sh

#3º Drop actual database
mysqladmin -u${mysql_username} -p${mysql_user_password} drop ${mysql_db_name}

#4º Remove actual folder
rm -rf ${dir_to_be_backed_up}

#5º Create the new db
mysqladmin -u${mysql_username} -p${mysql_user_password} create ${mysql_db_name}

#6º Uncompress db file
gzip -d ${database_file}

#7º Import db dump inside the new db
mysql -u${mysql_username} -p${mysql_user_password} ${mysql_db_name} < ${dir_for_backups}/${database_file_uncompressed}

#8º Uncompress files on the correct folder
tar xvjf ${dir_file} -C /var --strip-components=1

echo "All operationes DONE"