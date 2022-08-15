<a href="https://github.com/techshareroom/backup-restore-advanced-cms/blob/master/READMEesES.md" target="_blank"><img src="https://github.com/techshareroom/resources/raw/main/images/languages/spain.png" width="80" img align="right"></a>
<a href="https://github.com/techshareroom/backup-restore-advanced-cms" target="_blank"><img src="https://github.com/techshareroom/resources/raw/main/images/languages/united-kingdom.png" width="80" style="vertical-align:middle;margin:0px 50px" img align="right"></a>

<img src="https://github.com/techshareroom/resources/raw/main/images/backup-restore-advanced-cms.png" width="80"> backup-restore-advanced-cms
=============================================

<a href="https://discord.gg/hbAHGSYGfs">
<img src="https://discordapp.com/api/guilds/750051000664064141/widget.png?style=banner2" alt="Discord Banner 2"/>
</a>

This script is an universal backup script for sites using content management system (CMS) such as MediaWiki, Joomla and WordPress meant to be run daily using crontab. This script creates a copy of both database and files.

This repo was forked from [here](https://github.com/erkkimon/backup-advanced) and has the same license.

Also is compatible with MediaWiki, Joomla, WordPress and others CMS with MySQL DB engine.

Not container support by now.

Be careful, this repo is in alpha stage, not for production purposes by now.

You can add PR, bugs, etc.

Fork if you want.

Tutorial for backup
=============================================

* Modify "Config" section
* Run script with ./backup-advanced.sh
* Add manually to your cron if you like

Tutorial for restore
=============================================

* Modify "Config" section
* Run script with ./restore-advanced.sh

This fork has these extras
=============================================

* Includes a [restore script](https://github.com/TechShareRoom/backup-restore-advanced-cms/blob/master/restore-advanced.sh) 
* Removes old backups

TO DO's
=============================================

* Script to add to your cron
* Add support for containers