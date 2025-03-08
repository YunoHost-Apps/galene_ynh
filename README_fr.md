<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Galène pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/galene)](https://ci-apps.yunohost.org/ci/apps/galene/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/galene)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/galene)

[![Installer Galène avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Galène rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Galène est un serveur de visioconférence (un « SFU ») facile à déployer et qui nécessite des ressources serveur modérées. Il a été conçu à l'origine pour les cours et les conférences (où un seul orateur diffuse de l'audio et de la vidéo à des centaines ou des milliers d'utilisateurs), mais a évolué par la suite pour être utile pour les travaux pratiques des étudiants (où les utilisateurs sont divisés en plusieurs petits groupes) et les réunions (où un douzaine d'utilisateurs interagissent entre eux).

### Fonctionnalités client :

- audio et vidéo multipartites
- chat textuel
- assez bonne prise en charge pour mobile (Android et iPhone/iPad)
- partage d'écran et de fenêtre, y compris le partage de plusieurs fenêtres simultanément (pas sur mobile)
- streaming vidéo et audio à partir du disque
- détection d'activité
- prise en charge LDAP
- inviter un utilisateur
- Client en ligne de commande pour le transfert de fichiers Galene


**Version incluse :** 0.96.3~ynh1

**Démo :** <https://galene.org:8443/>

## Captures d’écran

![Capture d’écran de Galène](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Site officiel de l’app : <https://galene.org/>
- Documentation officielle utilisateur : <https://galene.org/faq.html>
- Documentation officielle de l’admin : <https://galene.org/>
- Dépôt de code officiel de l’app : <https://github.com/jech/galene>
- YunoHost Store : <https://apps.yunohost.org/app/galene>
- Signaler un bug : <https://github.com/YunoHost-Apps/galene_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
ou
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
