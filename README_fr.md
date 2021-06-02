# Galene pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/galene.svg)](https://dash.yunohost.org/appci/app/galene) ![](https://ci-apps.yunohost.org/ci/badges/galene.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/galene.maintain.svg)  
[![Installer Galene avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Galene rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Serveur de visioconférence facile à déployer

**Version incluse :** 0.3.5~ynh1

**Démo :** https://galene.org:8443/

## Captures d'écran

![](./doc/screenshots/screenshot.png)

## Avertissements / informations importantes

### Accéder à des groupes

Les salles de réunion *Galène* sont appelées « groupes ». Tout groupe est accessible sur `https://domain.tld/group/GroupName`, en tapant son nom dans le champ de recherche de la page d'accueil, ou en le sélectionnant dans la liste publique (si le groupe est configuré comme visible publiquement, voir ci-dessous).

#### Ajouter et configurer des groupes

Les groupes sont définis par des fichiers JSON situés dans le dossier *Galène* (`/opt/yunohost/galene/groups`). Chaque groupe est représenté par un fichier `GroupName.json`.
Pour créer un nouveau groupe, vous devez créer un fichier `GroupNameExample.json` (vous pouvez également créer un sous-dossier, et les groupes seront accessibles avec` https://domain.tld/group/subfolder/GroupName`). Différentes options de configurations sont disponibles (voir https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file).

*NB : les espaces sont pris en charge dans les noms de fichiers de groupe.* 

### Configurer votre serveur TURN

#### Utilisation du serveur TURN de *Galène*
Galène est livré avec un serveur TURN intégré qui devrait fonctionner immédiatement.
- Si votre serveur est derrière NAT, autorisez le trafic entrant vers le port TCP `8443` (ou tout ce qui est configuré avec l'option `-http` dans `/etc/systemd/system/galene.service`) et le port TCP/UDP `1194` (ou tout ce qui est configuré avec l'option `-turn` dans `/etc/systemd/system/galene.service`)

#### Utilisation de votre propre serveur TURN
- Installez [coturn_ynh](https://github.com/YunoHost-Apps/coturn_ynh).
- Ajoutez `/opt/yunohost/galene/data/ice-servers.json` avec ces lignes et changez `turn.example.org` et `secret`

```
    [
        {
            "urls": [
                "turn:turn.example.org:5349",
                "turn:turn.example.org:5349?transport=tcp"
            ],
            "username": "galene",
            "credential": "secret"
        }
    ]
``` 
- définir l'option de virage de `/etc/systemd/system/galene.service` sur `-turn auto` (ou `-turn ""` pour désactiver le serveur TURN intégré). 

Pour vérifier si le serveur TURN est opérationnel, tapez `/relay-test` dans la boîte de dialogue ; si le serveur TURN est correctement configuré, vous devriez voir un message indiquant que le test du relai a réussi.

### Statistiques du serveur

Certaines statistiques sont disponibles sous `/opt/yunohost/galene/stats.json`, avec une version lisible sur `domain.ltd/stats.html`. Ceci n'est disponible que pour l'administrateur du serveur. 

## Documentations et ressources

* Site officiel de l'app : https://galene.org/
* Documentation officielle utilisateur : https://yunohost.org/en/app_galene
* Documentation officielle de l'admin : https://galene.org/
* Dépôt de code officiel de l'app : https://github.com/jech/galene
* Documentation YunoHost pour cette app : https://yunohost.org/app_galene
* Signaler un bug : https://github.com/YunoHost-Apps/galene_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
ou
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps