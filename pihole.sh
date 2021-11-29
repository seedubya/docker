#!/bin/bash
#
# Build a usable pihole container.
#
# Update procedure:
# 1. docker pull pihole/pihole:latest
# 2. docker stop pihole ; docker container rm pihole
# 3. ./pihole.sh (this file)
# 4. remove old image of pihole (docker image ls ; docker image rm <image id>
#

docker run --detach \
    -e PIHOLE_DNS_1="208.67.222.222" \
    -e PIHOLE_DNS_2="208.67.220.220" \
    -e FTLCONF_REPLY_ADDR4="192.168.1.10" \
    -e TZ="Europe/London" \
    -e WEBPASSWORD="ChangeMe" \
    -p 53:53/tcp \
    -p 53:53/udp \
    -p 80:80 \
    -p 443:443 \
    -v "/home/pi/docker_config/pihole/etc-pihole/:/etc/pihole/" \
    -v "/home/pi/docker_config/pihole/etc-dnsmasq.d/:/etc/dnsmasq.d/" \
    --cap-add=NET_ADMIN \
    --dns=127.0.0.1 --dns=1.1.1.1 \
    --name pihole \
    --restart=unless-stopped \
     pihole/pihole:latest
