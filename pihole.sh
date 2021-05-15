#!/bin/bash
#
# Build a usable pihole container.
#

docker run --detach \
    -e DNS1="208.67.222.222" \
    -e DNS2="208.67.220.220" \
    -e ServerIP="192.168.1.110" \
    -e TZ="Europe/London" \
    -e WEBPASSWORD="yourehavingagiraffe" \
    -p 53:53/tcp \
    -p 53:53/udp \
    -p 80:80 \
    -p 443:443 \
    -v "/home/pi/docker_config/pihole/etc-pihole/:/etc/pihole/" \
    -v "/home/pi/docker_config/pihole/etc-dnsmasq.d/:/etc/dnsmasq.d/" \
    --dns=127.0.0.1 --dns=1.1.1.1 \
    --name pihole \
    --restart=unless-stopped \
     pihole/pihole:latest
