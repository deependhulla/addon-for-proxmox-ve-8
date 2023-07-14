#!/bin/sh




## non-free added for installing intel
echo "" > /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian bookworm main contrib non-free-firmware non-free" >> /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian bookworm-updates main contrib non-free-firmware non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org bookworm-security main contrib non-free-firmware non-free" >> /etc/apt/sources.list


#amd64-microcode - Processor microcode firmware for AMD CPUs
#intel-microcode - Processor microcode firmware for Intel CPUs
##As mostly we have customer on Intel 
apt update
apt -y install intel-microcode 
#apt -y install amd64-microcode 
