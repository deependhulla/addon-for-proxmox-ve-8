#!/bin/sh

apt update
apt -y upgrade
apt -y dist-upgrade

## basic extra package for troubleshooting and data copy and mangement
## php only cli tool for fast and easy scrpting and management scripts
#command line sendemail tool using command line in script
## For vnstat Network Data-Traffic Recorder 
## The openvswitch frr package allows you to create virtual networks (VNets) at the datacenter level with SDN.
### other Package openvswitch various-top
apt -y install git mc iptraf screen vim ethtool net-tools  wget elinks dos2unix \
arping dnsutils telnet curl ipmitool php-cli php-curl sendemail liblocale-po-perl \
libpve-network-perl ifupdown2 zfs-zed nmap openvswitch-switch apt-transport-https \
numactl gnupg2 debconf-utils pwgen iftop htop iotop multitail lm-sensors vnstat pigz \
pssh frr frr-pythontools libsasl2-modules linux-cpupower rsyslog pv lsscsi fio iperf lshw nvme-cli

#utilities for devices using the SCSI command set
#apt-get install sg3-utils 

#apt install linux-cpupower tuned tuned-utils tuned-utils-systemtap
#tuned-adm profile network-latency
#cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors

#cpu mitgation - bootloader
#vi /etc/kernel/cmdfile -> root=ZFS=rpool/ROOT/pve-1 boot=zfs mitigations=off intel_iommu=on iommu=pt
#proxmox-boot-tool refresh
#reboot
#lscpu

#apt-get install cmake flex libpciaccess-dev bison libx11-dev libxext-dev libxml2-dev libvdpau-dev python3-dev cython3 pkg-config
#apt-get install nfs-kernel-server
#apt-get install ifstat nicstat dstat sysstat

#apt-get install ledmon
# https://serverfault.com/questions/64239/physically-identify-the-failed-hard-drive
#ledctl locate=/dev/sda
#ledctl locate_off=/dev/sda
#ledctl locate=/dev/disk/by-id/[drive-id]

#sed -i "s/;date.timezone =/date\.timezone \= \'Asia\/Kolkata\'/" /etc/php/8.2/cli/php.ini
sed -i "s/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ERROR/" /etc/php/8.2/cli/php.ini

#update Container templates list 
pveam update

## for SDN to Tunne
#echo "" >> /etc/network/interfaces
#echo "source /etc/network/interfaces.d/*" >> /etc/network/interfaces

# ensure ipv4 forwarding is enabled id proxmox is used as router or iptables firewall
#sed -i 's/#* *net.ipv4.ip_forward=.*/net.ipv4.ip_forward=1/g' /etc/sysctl.conf

## VXLAN IPSEC Encryption
## If you need to add encryption on top of a VXLAN, it’s possible to do so with IPSEC, through strongswan.
## You’ll need to reduce the MTU by 60 bytes (IPv4) or 80 bytes (IPv6) to handle encryption.
## So with default real 1500 MTU, you need to use a MTU of 1370 (1370 + 80 (IPSEC) + 50 (VXLAN) == 1500).
#apt install strongswan

##Suricata IPS integration
##If you want to use the Suricata IPS (Intrusion Prevention System), it’s possible.
##Packets will be forwarded to the IPS only after the firewall ACCEPTed them.
# apt install suricata
# modprobe nfnetlink_queue



