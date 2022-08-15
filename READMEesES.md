<a href="https://github.com/techshareroom/backup-restore-advanced-cms/blob/master/READMEesES.md" target="_blank"><img src="https://github.com/techshareroom/resources/raw/main/images/languages/spain.png" width="80" img align="right"></a>
<a href="https://github.com/techshareroom/backup-restore-advanced-cms" target="_blank"><img src="https://github.com/techshareroom/resources/raw/main/images/languages/united-kingdom.png" width="80" style="vertical-align:middle;margin:0px 50px" img align="right"></a>

<img src="https://github.com/techshareroom/resources/raw/main/images/backup-restore-advanced-cms.png" width="80"> backup-restore-advanced-cms
=============================================

<a href="https://discord.gg/hbAHGSYGfs">
<img src="https://discordapp.com/api/guilds/750051000664064141/widget.png?style=banner2" alt="Discord Banner 2"/>
</a>

Este script es un script de copia de seguridad universal para sitios que utilizan un sistema de gestión de contenido (CMS) como MediaWiki, Joomla y WordPress, destinado a ejecutarse diariamente mediante crontab. Este script crea una copia tanto de la base de datos como de los archivos.

Este repo fue forkeado de [aquí](https://github.com/erkkimon/backup-advanced) y tiene la misma licencia.

También es compatible con MediaWiki, Joomla, WordPress y otros CMS con el motor de base de datos de MySQL.

Soporte para contenedores no implementado todavía.

Cuidado, este repo está en alpha, no es para ambientes de producción por ahora.

Puedes añadir PR, bugs, etc.

Forkea si quieres.

Tutorial para copia de seguridad
=============================================

* Modifica la sección de "Config"
* Ejecuta el script con ./backup-advanced.sh
* Añade manualmente a tu cron si quieres

Tutorial para restaurar copia de seguridad
=============================================

* Modifica la sección de "Config"
* Ejecuta el script con ./restore-advanced.sh

Este fork tiene estos extras
=============================================

* Incluye un [restore script](https://github.com/TechShareRoom/backup-restore-advanced-cms/blob/master/restore-advanced.sh) 
* Elimina las copias de seguridad antiguas

PARA HACER
=============================================

* Script para añadir a tu cron
* Añadir soporte para contenedores