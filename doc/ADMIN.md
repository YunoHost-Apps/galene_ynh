### Accessing groups

*Galène* meeting rooms are called "groups". Any group is accessible at `https://__DOMAIN__/group/GroupName`, by typing its name in the home page search field, or by selecting it in the public list (if the group is configured as publicly visible, see below).
During install a group is created with YunoHost LDAP authentication, accessible at `https://__DOMAIN__/group/YunoHost_Users`.

#### Creating and configuring groups

Groups are defined by JSON files located in the folder `__DATA_DIR__/groups`. Each group is represented by a `GroupName.json` file.
To create a new group, you need to create a `GroupNameExample.json` file and restart Galène service (you can also make subfolder groups, and the groups will be accessible with `https://__DOMAIN__/group/subfolder/GroupName/`). Various configuration options are available (see https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file).

*NB: Spaces are supported in group file names.*

#### Hashed passwords

If you don’t wish to store cleartext passwords on the server, you may generate hashed passwords with the galene-password-generator utility:

`.__INSTALL_DIR__/galenectl hash-password -password "your_password"`

A user entry with a hashed password looks like this:
``` 
{
    "username": "jch",
    "password": {
        "type": "pbkdf2",
        "hash": "sha-256",
        "key": "f591c35604e6aef572851d9c3543c812566b032b6dc083c81edd15cc24449913",
        "salt": "92bff2ace56fe38f",
        "iterations": 4096
    }
}
```

### Configuring your TURN server

#### Using *Galène*'s internal TURN server
Galène comes with a built-in TURN server that should work out-of-the-box.
- If your server is behind NAT, allow incoming traffic to TCP/UDP port `1194` (or whatever is configured with the `-turn` option in `/etc/systemd/system/galene.service`)

#### Using your own TURN server
- Install [coturn_ynh](https://github.com/YunoHost-Apps/coturn_ynh).
- Add `/opt/yunohost/galene/data/ice-servers.json` with these lines and change `turn.example.org` and `secret`

```
    [
        {
            "urls": [
                "turn:turn.example.org:5349",
                "turn:turn.example.org:5349?transport=tcp"
            ],
            "username": "galene",
            "credential": "secret"
        }
    ]
```
- set `/etc/systemd/system/galene.service` `-turn` option to `-turn auto` (or `-turn ""` to disable the built-in TURN server).

To check if the TURN server is up and running, type `/relay-test` in the chat box. If the TURN server is properly configured, you should see a message saying that the relay test has been successful.

### Server Statistics page

Statistics are available under `/opt/yunohost/galene/stats.json`, with a human-readable version at `__DOMAIN__/stats.html`. This is only available to the server administrator (the admin/password is set in the `config.json` file: `/opt/yunohost/galene/data/config.json`).

### How do I record my lecture?

Make sure allow-recording is set in your group configuration. Log-in as an operator, then say `/record` before you start your lecture. Don't forget to say `/unrecord` at the end. You will find your recordings under `https://__DOMAIN__/recordings/groupname/`. The video recordings are stored in `__DATA_DIR__/recordings` folder.

### Command-line client for Galene file transfer

https://github.com/jech/galene-file-transfer/blob/master/README
