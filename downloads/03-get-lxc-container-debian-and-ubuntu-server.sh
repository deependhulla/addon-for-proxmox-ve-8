#!/bin/bash

echo "Updating LXC Container List and download Debian 12 & Ubuntu 22.04 LTS Server Container images"
pveam update
#pveam available --section system
#pveam download local debian-11-standard_11.7-1_amd64.tar.zst
pveam download local debian-12-standard_12.0-1_amd64.tar.zst
pveam download local ubuntu-22.04-standard_22.04-1_amd64.tar.zst
