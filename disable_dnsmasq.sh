#!/usr/bin/env bash

sudo sed -i 's/^dns=dnsmasq/#&/' /etc/NetworkManager/NetworkManager.conf

sudo service network-manager restart
sudo service networking restart

sudo killall dnsmasq

