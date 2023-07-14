#/bin/sh
echo 'Y' | pveceph install --repository no-subscription

apt update
apt -y full-upgrade

