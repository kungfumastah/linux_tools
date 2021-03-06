#!/usr/bin/env bash

sudo sed -i 's/^dns=dnsmasq/#&/' /etc/NetworkManager/NetworkManager.conf

sudo service network-manager restart
sudo service networking restart

sudo killall dnsmasq

## add to /etc/dhcp/dhclient.conf:
supersede domain-name-servers 8.8.8.8, 8.8.4.4;





## If you want to override or append to the name servers suggested by the DHCP server, 
## you can configure this in /etc/dhcp/dhclient.conf, eg:

## interface "eth0" {
##    prepend domain-name-servers 10.0.0.2;
