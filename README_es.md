<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Galène para Yunohost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/galene)](https://ci-apps.yunohost.org/ci/apps/galene/)
![Estado funcional](https://apps.yunohost.org/badge/state/galene)
![Estado En Mantención](https://apps.yunohost.org/badge/maintained/galene)

[![Instalar Galène con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarGalène rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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


**Versión actual:** 0.96.3~ynh1

**Demo:** <https://galene.org:8443/>

## Capturas

![Captura de Galène](./doc/screenshots/screenshot.png)

## Documentaciones y recursos

- Sitio web oficial: <https://galene.org/>
- Documentación usuario oficial: <https://galene.org/faq.html>
- Documentación administrador oficial: <https://galene.org/>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/jech/galene>
- Catálogo YunoHost: <https://apps.yunohost.org/app/galene>
- Reportar un error: <https://github.com/YunoHost-Apps/galene_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
o
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
