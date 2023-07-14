#!/bin/bash

## keep ceph default package installed
echo 'Y' | pveceph install
#
### https://pve.proxmox.com/wiki/Ceph_Pacific_to_Quincy
##sed -i 's/pacific/quincy/' /etc/apt/sources.list.d/ceph.list
#
apt update
apt -y full-upgrade
