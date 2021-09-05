### Accessing groups

*Galène* meeting rooms are called "groups". Any group is accessible at `https://domain.tld/group/GroupName`, by typing its name in the home page search field, or by selecting it in the public list (if the group is configured as publicly visible, see below).

#### Creating and configuring groups

Groups are defined by JSON files located in the *Galène* folder (`/opt/yunohost/galene/groups`). Each group is represented by a `GroupName.json` file.
To create a new group, you need to create a `GroupNameExample.json` file (you can also make subfolder groups, and the groups will be accessible with `https://domain.tld/group/subfolder/GroupName`). Various configuration options are available (see https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file).

*NB: spaces are supported in group file names.*

### Configuring your TURN server

#### Using *Galène*'s TURN server
Galène comes with a built-in TURN server that should work out-of-the-box.
- If your server is behind NAT, allow incoming traffic to TCP port `8443` (or whatever is configured with the `-http` option in `/etc/systemd/system/galene.service`) and TCP/UDP port `1194` (or whatever is configured with the `-turn` option in `/etc/systemd/system/galene.service`)

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

Some statistics are available under `/opt/yunohost/galene/stats.json`, with a human-readable version at `domain.ltd/stats.html`. This is only available to the server administrator.