#!/bin/bash
# Check if ceph 17 is already installed or not ..if not install

if [[ $(dpkg -l ceph | grep 17)  ]]; then
	echo "Ceph Version Installed"
	dpkg -l ceph | grep 17
else
    echo "Installing Ceph packages"
    echo 'Y' | pveceph install --repository no-subscription
    apt update
    apt -y full-upgrade
fi




