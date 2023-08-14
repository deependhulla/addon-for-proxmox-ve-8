#!/bin/bash
# Check if ceph 17 is already installed or not ..if not install

if [[ $(dpkg -l ceph | grep 17)  ]]; then
	echo "Ceph Version Installed"
	dpkg -l ceph | grep 17
else
    echo "Installing Ceph packages"
    pveceph install
    apt update
    apt -y upgrade
    apt -y full-upgrade
fi




