<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Galène for YunoHost

[![Integration level](https://apps.yunohost.org/badge/integration/galene)](https://ci-apps.yunohost.org/ci/apps/galene/)
![Working status](https://apps.yunohost.org/badge/state/galene)
![Maintenance status](https://apps.yunohost.org/badge/maintained/galene)

[![Install Galène with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Galène quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

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


**Shipped version:** 0.96.1~ynh1

**Demo:** <https://galene.org:8443/>

## Screenshots

![Screenshot of Galène](./doc/screenshots/screenshot.png)

## Documentation and resources

- Official app website: <https://galene.org/>
- Official user documentation: <https://galene.org/faq.html>
- Official admin documentation: <https://galene.org/>
- Upstream app code repository: <https://github.com/jech/galene>
- YunoHost Store: <https://apps.yunohost.org/app/galene>
- Report a bug: <https://github.com/YunoHost-Apps/galene_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
or
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
