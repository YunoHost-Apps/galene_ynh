#!/bin/bash

source /usr/share/yunohost/helpers

external_IP_line="external-ip=__IPV4__/__IPV6__"

public_ip4="$(curl -s ip.yunohost.org)" || true
public_ip6="$(curl -s ipv6.yunohost.org)" || true

if [ -n "$public_ip4" ] && ynh_validate_ip4 --ip_address="$public_ip4"
then
    external_IP_line="${external_IP_line/'__IPV4__'/$public_ip4}"
else
    external_IP_line="${external_IP_line/'__IPV4__/'/}"
fi

if [ -n "$public_ip6" ] && ynh_validate_ip6 --ip_address="$public_ip6"
then
    external_IP_line="${external_IP_line/'__IPV6__'/$public_ip6}"
else
    external_IP_line="${external_IP_line/'/__IPV6__'/}"
fi

old_config_line=$(egrep "^external-ip=.*\$" "/etc/$app/coturn.conf")
ynh_replace_string "^external-ip=.*\$" "$external_IP_line" "/etc/$app/coturn.conf"
new_config_line=$(egrep "^external-ip=.*\$" "/etc/$app/coturn.conf")

setfacl -R -m user:turnserver:rX  /etc/__APP__

if [ "$old_config_line" != "$new_config_line" ]
then
    systemctl restart coturn-__APP__.service
fi

exit 0
