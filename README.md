# Galène for YunoHost

[![Integration level](https://dash.yunohost.org/integration/galene.svg)](https://dash.yunohost.org/appci/app/galene) ![](https://ci-apps.yunohost.org/ci/badges/galene.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/galene.maintain.svg)  
[![Install Galène with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=galene)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Galène quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Galène is a videoconferencing server that is easy to deploy (just copy a few files and run the binary) and that requires moderate server resources. It was originally designed for lectures and conferences (where a single speaker streams audio and video to hundreds or thousands of users), but later evolved to be useful for student practicals (where users are divided into many small groups), and meetings (where a few dozen users interact with each other). 

**Shipped version:** 0.2

## Screenshots

![](France_in_XXI_Century._School.jpg)

## Demo

* [Official demo](https://galene.org:8443/)

## Configuration

### Turnserver

For VoIP and video conferencing a TURN server is also installed (and configured). The TURN server listens on two UDP and TCP ports. You can get them with these commands:

```
sudo yunohost app setting galene turnserver_tls_port
sudo yunohost app setting galene turnserver_alt_tls_port
```

The TURN server will also choose a port dynamically when a new call starts. The range is between 49153 - 49193.

For some security reason the ports range (49153 - 49193) isn't automatically open by default. If you want to use Galène server for VoIP or conferencing you will need to open this port range manually. To do this, just run this command:

```
sudo yunohost firewall allow Both 49153:49193
```

You might also need to open these ports (if it is not automatically done) on your ISP box.

To prevent the situation when the server is behind a NAT, the public IP is written in the TURN server config. By this the TURN server can send its real public IP to the client. For more information see [the coturn example config file](https://github.com/coturn/coturn/blob/master/examples/etc/turnserver.conf#L56-L62).So if your IP changes, you could run the script `/opt/yunohost/__GALENE_INSTANCE_NAME__/Coturn_config_rotate.sh` to update your config.

If you have a dynamic IP address, you also might need to update this config automatically. To do that just edit a file named `/etc/cron.d/coturn_config_rotate` and add the following content (just adapt the __GALENE_INSTANCE_NAME__ which could be `galene` or maybe `galene__2`).

```
*/15 * * * * root bash /opt/yunohost/__GALENE_INSTANCE_NAME__/Coturn_config_rotate.sh;
```

To check if Galène can connect to the TURN server, connect to Galène as operator and type `/relay-test` in the chat box; if the TURN server is properly configured, you should see a message saying that the relay test has been successful.

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
