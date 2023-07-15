#!/bin/bash

echo "deb https://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list 
wget -c https://download.webmin.com/jcameron-key.asc -O /etc/apt/trusted.gpg.d/webmin-jcameron-key.asc
apt update
apt -y install webmin

## change port from 10000 to 8383
sed -i "s/10000/8383/g" /etc/webmin/miniserv.conf
/etc/init.d/webmin restart 2>/dev/null

echo "Webmin run https on port 8383 use Firefox Browser to Access not Google Chrome as SSL Certifcate is not applied yet"; 
