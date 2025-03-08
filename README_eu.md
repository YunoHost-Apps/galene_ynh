<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Galène YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/galene)](https://ci-apps.yunohost.org/ci/apps/galene/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/galene)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/galene)

[![Instalatu Galène YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Galène YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Galène is a videoconference server (an “SFU”) that is easy to deploy and that requires moderate server resources. It was originally designed for lectures and conferences (where a single speaker streams audio and video to hundreds or thousands of users), but later evolved to be useful for student practicals (where users are divided into many small groups), and meetings (where a dozen users interact with each other).

### Client features:

- multiparty audio and video
- text chat
- reasonably good support for mobile (Android and iPhone/iPad)
- screen and window sharing, including sharing multiple windows simultaneously (not on mobile)
- streaming video and audio from disk
- activity detection
- LDAP support
- invite user
- Command-line client for Galene file transfer


**Paketatutako bertsioa:** 0.96.3~ynh1

**Demoa:** <https://galene.org:8443/>

## Pantaila-argazkiak

![Galène(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://galene.org/>
- Erabiltzaileen dokumentazio ofiziala: <https://galene.org/faq.html>
- Administratzaileen dokumentazio ofiziala: <https://galene.org/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/jech/galene>
- YunoHost Denda: <https://apps.yunohost.org/app/galene>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/galene_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
edo
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
