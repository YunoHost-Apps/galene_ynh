<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Galène para YunoHost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/galene)](https://ci-apps.yunohost.org/ci/apps/galene/)
![Estado de funcionamento](https://apps.yunohost.org/badge/state/galene)
![Estado de mantemento](https://apps.yunohost.org/badge/maintained/galene)

[![Instalar Galène con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Galène de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

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


**Versión proporcionada:** 0.96.3~ynh1

**Demo:** <https://galene.org:8443/>

## Capturas de pantalla

![Captura de pantalla de Galène](./doc/screenshots/screenshot.png)

## Documentación e recursos

- Web oficial da app: <https://galene.org/>
- Documentación oficial para usuarias: <https://galene.org/faq.html>
- Documentación oficial para admin: <https://galene.org/>
- Repositorio de orixe do código: <https://github.com/jech/galene>
- Tenda YunoHost: <https://apps.yunohost.org/app/galene>
- Informar dun problema: <https://github.com/YunoHost-Apps/galene_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
ou
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
