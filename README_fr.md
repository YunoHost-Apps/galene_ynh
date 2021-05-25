# Galene pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/galene.svg)](https://dash.yunohost.org/appci/app/galene) ![](https://ci-apps.yunohost.org/ci/badges/galene.status.svg)  ![](https://ci-apps.yunohost.org/ci/badges/galene.maintain.svg)
[![Installer galene avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install galene quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Vue d'ensemble

Serveur de visioconférence facile à déployer

**Version incluse:** 0.3.5~ynh2

**Démo:** https://galene.org:8443/


## Captures d'écran


   ![](./doc/screenshots/screenshot.png)




## Avertissements / informations importantes

### Comment créer des groupes

Les groupes sont définis par des fichiers dans le répertoire `/opt/yunohost/galene/groups`. Différentes options sont disponibles (voir https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file)



## Documentations et ressources

* Site official de l'app : https://galene.org/
* Documentation officielle utilisateur: https://yunohost.org/en/app_galene
* Documentation officielle de l'admin: https://galene.org/
* Dépôt de code officiel de l'app:  https://github.com/jech/galene
* Documentation YunoHost pour cette app: https://yunohost.org/app_galene
* Signaler un bug: https://github.com/YunoHost-Apps/galene_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
or
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications:** https://yunohost.org/packaging_apps