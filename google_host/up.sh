#!/bin/bash


rm hosts.bak
rm hosts

wget "https://raw.githubusercontent.com/racaljk/hosts/master/hosts"

cp /etc/hosts hosts.bak
rm /etc/hosts
cat fedora_hosts  hosts >>  new
cp new /etc/hosts
rm new
sudo systemctl restart network
echo "Success"