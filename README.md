# Galène for YunoHost

[![Integration level](https://dash.yunohost.org/integration/galene.svg)](https://dash.yunohost.org/appci/app/galene) ![](https://ci-apps.yunohost.org/ci/badges/galene.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/galene.maintain.svg)  
[![Install Galène with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Galène quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Galène is a videoconferencing server that is easy to deploy (just copy a few files and run the binary) and that requires moderate server resources. It was originally designed for lectures and conferences (where a single speaker streams audio and video to hundreds or thousands of users), but later evolved to be useful for student practicals (where users are divided into many small groups), and meetings (where a few dozen users interact with each other). 

**Shipped version:** 0.2

## Demo

* [Official demo](https://galene.org:8443/) *(NB: this is a public instance, your microphone and camera streams might be exposed to anyone joining that demo)*

## Configuration

#### Groups (meeting rooms)

*Galène* meeting rooms are called "groups".

Any group is accessible at `https://yourgalenedomain.tld/group/GroupName`, by typing its name in the home page search field, or by selecting it in the public list (if the group is configured as publicly visible, see below).

#### Configuring groups and adding new ones

Groups are defined by *json* files located in *Galène* folder (`/opt/yunohost/galene/groups`). Each group is represented by a `GroupName.json` file.
To create a new group, you need to create a `GroupNameExample.json` file (you can also make subfolder, and the groups will be accessible with `https://yourgalenedomain.tld/group/subfolder/GroupName`).

*NB: spaces are **not** supported in group file names.*

You can configure your groups to be accessible without any pseudo or password (anonymous login), only with a defined password, with username but no password, or both username and password.
Check the documentation: [how to configure groups](https://galene.org/README.html).

#### TURN server and stream relay

To allow any users to connect thought their NAT firewall to your server, Galene use a TURN server. If it doesn't run properly, your (audio+video) streams might not be shared to the servers, thus not shared to other participants.
To check if the TURN server is up and running, type `/relay-test` in the chat box; if the TURN server is properly configured, you should see a message saying that the relay test has been successful.

## Documentation

 * Official documentation: https://galene.org/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

 * Are LDAP and HTTP auth supported? **No**
 * Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/galene%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/galene/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/galene%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/galene/)

## Limitations

* For now there is no web administration interface. To configure your servers (groups, …) you need to use the command line to edit *Galène* configuration files.
* See https://galene.org/ for limitations, browsers support and other Frequently Asked Questions

## Additional information

#### Recondings

[How to record your sessions](https://galene.org/).

Once you recorded one session, the content is located in `/opt/yunohost/galene/recordings/GroupName` folder.

#### Statistics

* Server statistics are available at `https://yourgalenedomain.tld/stats` using admin login + password

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
