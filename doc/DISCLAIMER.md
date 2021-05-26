### Configure your groups

Groups are defined by files in the `/opt/yunohost/galene/groups` directory. Various options are available (see https://github.com/YunoHost-Apps/galene_ynh/wiki/Configuration-file)

## Configure your TURN server

#### Using Galène Turn server
Galène comes with build in TURN server that should work out-of-the-box.
- If your server is behind NAT, allow incoming traffic to TCP port `8443` (or whatever is configured with the `-http` option in `/etc/systemd/system/galene.service`) and port `1194` (or whatever is configured with the `-turn` option in `/etc/systemd/system/galene.service`)

#### Using you own TURN server
- Install [coturn_ynh](https://github.com/YunoHost-Apps/coturn_ynh).
- Add `/opt/yunohost/galene/data/ice-servers.json` with this lines and change `turn.example.org` and `secret`

```
    [
        {
            "urls": [
                "turn:turn.example.org:443",
                "turn:turn.example.org:443?transport=tcp"
            ],
            "username": "galene",
            "credential": "secret"
        }
    ]
```
- set `/etc/systemd/system/galene.service` turn option to `-turn auto` 
