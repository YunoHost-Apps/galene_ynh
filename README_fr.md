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

## Configuration

### Comment créer des groupes

Les groupes sont définis par des fichiers dans le répertoire `/opt/yunohost/galene/groups`. Différentes options sont disponibles (voir https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file)

### Serveur TURN

Pour la VoIP et la visioconférence, un serveur TURN est également installé et configuré. Le serveur TURN écoute sur deux ports UDP et TCP. Vous pouvez les obtenir avec ces commandes :

```
sudo yunohost app setting galene turnserver_port
``` 

Le serveur TURN choisira également un port de manière dynamique lors du démarrage d'une nouvelle visioconférence. La plage est comprise entre 49152 et 65535.

Par sécurité, la plage de ports (49152 - 65535) n'est pas automatiquement ouverte par défaut. Si vous souhaitez utiliser Galène pour la VoIP ou la visioconférence, vous devrez ouvrir cette plage de ports manuellement. Pour ce faire, exécutez simplement cette commande :

```
sudo yunohost firewall allow Both 49152:65535
```

Vous devrez peut-être également ouvrir ces ports (si ce n'est pas fait automatiquement) sur votre box.

Pour éviter la situation où le serveur est derrière un NAT, l'adresse IP publique est écrite dans la configuration du serveur TURN. De cette manière, le serveur TURN peut envoyer sa véritable adresse IP publique au client. Pour plus d'informations, consultez [le fichier de configuration d'exemple Coturn](https://github.com/coturn/coturn/blob/master/examples/etc/turnserver.conf#L56-L62). Donc, si votre adresse IP change, vous pouvez exécuter le script `/opt/yunohost/galene/Coturn_config_rotate.sh` pour mettre à jour votre configuration.

Si vous avez une adresse IP dynamique, vous devrez peut-être également mettre à jour cette configuration automatiquement. Pour ce faire, éditez simplement un fichier nommé `/etc/cron.d/coturn_config_rotate` et ajoutez le contenu suivant.

```
* / 15 * * * * root bash /opt/yunohost/galene/Coturn_config_rotate.sh;
```

Pour vérifier si Galène peut se connecter au serveur TURN, connectez-vous à Galène en tant qu'opérateur et tapez `/relay-test` dans la boîte de dialogue chat; si le serveur TURN est correctement configuré, vous devriez voir un message indiquant que le test du relais a réussi.



## Documentations et ressources

* Site official de l'app : https://galene.org

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