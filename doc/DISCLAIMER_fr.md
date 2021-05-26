### Comment créer des groupes

Les groupes sont définis par des fichiers dans le répertoire `/opt/yunohost/galene/groups`. Différentes options sont disponibles (voir https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file)

### Configurez vos groupes

## Configurez votre serveur TURN

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