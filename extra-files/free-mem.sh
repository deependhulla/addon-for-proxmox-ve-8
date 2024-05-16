#!/bin/sh
clear
echo Free Cache and Memory , once a day. 
w
journalctl --vacuum-size=100M
free -h
date
sync; echo 3 > /proc/sys/vm/drop_caches
date
swapoff -a
date
swapon -a
date
free -h
echo "All Done";
echo "";
