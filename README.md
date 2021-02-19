# Galène for YunoHost

[![Integration level](https://dash.yunohost.org/integration/galene.svg)](https://dash.yunohost.org/appci/app/galene) ![](https://ci-apps.yunohost.org/ci/badges/galene.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/galene.maintain.svg)  
[![Install Galène with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Galène quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Galène is a videoconferencing server that is easy to deploy (just copy a few files and run the binary) and that requires moderate server resources. It was originally designed for lectures and conferences (where a single speaker streams audio and video to hundreds or thousands of users), but later evolved to be useful for student practicals (where users are divided into many small groups), and meetings (where a few dozen users interact with each other). 

**Shipped version:** 0.3

## Screenshots

![](France_in_XXI_Century._School.jpg)

## Demo

* [Official demo](https://galene.org:8443/)

## Configuration


## Documentation

 * Official documentation: https://galene.org/
 * YunoHost documentation: https://yunohost.org/#/app_galene

## YunoHost specific features

#### Multi-user support

 * Are LDAP and HTTP auth supported? **No**
 * Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/galene%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/galene/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/galene%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/galene/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/galene_ynh/issues
 * App website: https://galene.org/
 * Upstream app repository: https://github.com/jech/galene
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/galene_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
or
sudo yunohost app upgrade galene -u https://github.com/YunoHost-Apps/galene_ynh/tree/testing --debug
```
