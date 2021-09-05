### Accéder à des groupes

Les salles de réunion *Galène* sont appelées « groupes ». Tout groupe est accessible sur `https://domain.tld/group/GroupName`, en tapant son nom dans le champ de recherche de la page d'accueil, ou en le sélectionnant dans la liste publique (si le groupe est configuré comme visible publiquement, voir ci-dessous).

#### Ajouter et configurer des groupes

Les groupes sont définis par des fichiers JSON situés dans le dossier *Galène* (`/home/yunohost.app/galene/groups`). Chaque groupe est représenté par un fichier `GroupName.json`.
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

### Comment enregistrer ma conférence ?

Assurez-vous que l'autorisation d'enregistrement est définie dans la configuration de votre groupe. Connectez-vous en tant qu'opérateur, puis dites `/record` avant de commencer votre cours. N'oubliez pas de dire `/unrecord` à la fin. Vous trouverez vos enregistrements sous `https://server.example.com/recordings/groupname/`. Les enregistrements vidéo sont stockés dans le dossier `/home/yunohost.app/galene/recordings`. 
