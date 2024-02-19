#!/bin/bash

##########
# CONFIG #
##########

#!/bin/bash

#Folder variables and files
dir_for_backups="/home/usuario/backups/techshareroom_wiki"
site_folder="techshareroom_wiki"

find ${dir_for_backups} -name ${site_folder}_* -mtime +${time_for_deletion} -exec rm {} \;

echo "All operationes DONE"