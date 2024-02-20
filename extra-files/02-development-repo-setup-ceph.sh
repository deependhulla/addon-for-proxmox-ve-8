#!/bin/bash
# Check if ceph 18 is already installed or not ..if not install

if [[ $(dpkg -l ceph | grep 18)  ]]; then
	echo "Ceph Version Installed"
	dpkg -l ceph | grep 18
else
 pveceph install --version reef --repository no-subscription
    apt update
    apt -y upgrade
    apt -y full-upgrade

fi




