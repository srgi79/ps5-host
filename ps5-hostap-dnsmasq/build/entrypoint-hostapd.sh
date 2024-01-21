#!/bin/sh
set -eo pipefail
echo "WIFI_DEV: $WIFI_DEV"
echo "iface $WIFI_DEV inet manual" >> /etc/network/interfaces
ifconfig $WIFI_DEV down
ifconfig $WIFI_DEV up 10.1.1.1
hostapd -i $WIFI_DEV /config/hostapd.conf
