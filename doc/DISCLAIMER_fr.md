### Comment créer des groupes

Les salles de réunion * Galène * sont appelées «groupes».

Tout groupe est accessible sur `https://domain.tld/group/GroupName`, en tapant son nom dans le champ de recherche de la page d'accueil, ou en le sélectionnant dans la liste publique (si le groupe est configuré comme visible publiquement, voir ci-dessous ).

#### Configurer des groupes et en ajouter de nouveaux

Les groupes sont définis par des fichiers *json* situés dans le dossier * Galène * (`/opt/yunohost/galene/groups`). Chaque groupe est représenté par un fichier `GroupName.json`.
Pour créer un nouveau groupe, vous devez créer un fichier `GroupNameExample.json` (vous pouvez également créer un sous-dossier, et les groupes seront accessibles avec` https://domain.tld/group/subfolder/GroupName`). Différentes options sont disponibles (voir https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file)

*NB: les espaces sont pris en charge dans les noms de fichiers de groupe.* 

### Configurez votre serveur TURN

#### Utilisation du serveur Galène Turn
Galène est livré avec un serveur TURN intégré qui devrait fonctionner immédiatement.
- Si votre serveur est derrière NAT, autorisez le trafic entrant vers le port TCP `8443` (ou tout ce qui est configuré avec l'option `-http` dans `/etc/systemd/system/galene.service`) et le port `1194` (ou tout ce qui est configuré avec l'option `-turn` dans `/etc/systemd/system/galene.service`)

#### Utilisation de votre propre serveur TURN
- Installez [coturn_ynh] (https://github.com/YunoHost-Apps/coturn_ynh).
- Ajoutez `/opt/yunohost/galene/data/ice-servers.json` avec ces lignes et changez `turn.example.org` et `secret`

```
    [
        {
            "urls": [
                "turn: turn.example.org: 443",
                "turn: turn.example.org: 443? transport = tcp"
            ],
            "username": "galene",
            "credential": "secret"
        }
    ]
``` 
- définir l'option de virage `/etc/systemd/system/galene.service` sur `-turn auto` 

Pour vérifier si le serveur TURN est opérationnel, tapez `/relay-test` dans la boîte de dialogue ; si le serveur TURN est correctement configuré, vous devriez voir un message indiquant que le test du relais a réussi.

### Statistiques du serveur

Certaines statistiques sont disponibles sous `/opt/yunohost/galene/stats.json`, avec une version lisible par l'homme sur `daomain.ltd/stats.html`. Ceci n'est disponible que pour l'administrateur du serveur. 
