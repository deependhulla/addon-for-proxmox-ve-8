#!/bin/bash


#Guide and references 
#https://pve.proxmox.com/wiki/ISCSI_Multipath
#https://forum.proxmox.com/threads/how-to-setup-multipathing-on-proxmox-ve.108418/
#https://docs.datacore.com/FAQ/HCG-Proxmox/Host-Configuration-Guide-Proxmox/iSCSI-Multipath.htm
#mrpeardotnet/PVE-Multipath.md
##https://gist.github.com/mrpeardotnet/547aecb041dbbcfa8334eb7ffb81d784
## forum to read
#https://forum.proxmox.com/threads/multipath-does-not-work-after-reboot.27179/
#https://rdr-it.io/en/proxmox-configure-multipath/

apt-get -y install multipath-tools multipath-tools-boot open-iscsi
