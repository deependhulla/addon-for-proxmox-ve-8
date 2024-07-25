#!/bin/bash



whiptail --title "Check Your HostName and DateTime" --infobox "Please make sure your System Date Time is OK in Sync\n `date` \n\n Also Make sure hostname is set proper \n Host: `hostname -f`" 12 58


##disable ipv6 as most time not required
sysctl -w net.ipv6.conf.all.disable_ipv6=1 1>/dev/null
sysctl -w net.ipv6.conf.default.disable_ipv6=1 1>/dev/null

#build rc.local as it not there by default in  10.x
/bin/cp -pR /etc/rc.local /usr/local/old-rc.local-`date +%s` 2>/dev/null
touch /etc/rc.local 
printf '%s\n' '#!/bin/bash'  | tee -a /etc/rc.local 1>/dev/null
echo "sysctl -w net.ipv6.conf.all.disable_ipv6=1" >>/etc/rc.local
echo "sysctl -w net.ipv6.conf.default.disable_ipv6=1" >> /etc/rc.local
echo "sysctl vm.swappiness=0" >> /etc/rc.local
echo "Setting the initial default idle-delay to -1 will prevent any autosuspend of any USB device"  >> /etc/rc.local
echo "echo -1 >/sys/module/usbcore/parameters/autosuspend">> /etc/rc.local
echo "echo \"$[12 * 1024*1024*1024 - 1]\" >/sys/module/zfs/parameters/zfs_arc_min" >> /etc/rc.local
echo "echo \"$[12 * 1024*1024*1024]\" >/sys/module/zfs/parameters/zfs_arc_max" >> /etc/rc.local


echo "exit 0" >> /etc/rc.local
chmod 755 /etc/rc.local

## need like autoexe bat on startup
echo "[Unit]" > /etc/systemd/system/rc-local.service
echo " Description=/etc/rc.local Compatibility" >> /etc/systemd/system/rc-local.service
echo " ConditionPathExists=/etc/rc.local" >> /etc/systemd/system/rc-local.service
echo "" >> /etc/systemd/system/rc-local.service
echo "[Service]" >> /etc/systemd/system/rc-local.service
echo " Type=forking" >> /etc/systemd/system/rc-local.service
echo " ExecStart=/etc/rc.local start" >> /etc/systemd/system/rc-local.service
echo " TimeoutSec=0" >> /etc/systemd/system/rc-local.service
echo " StandardOutput=tty" >> /etc/systemd/system/rc-local.service
echo " RemainAfterExit=yes" >> /etc/systemd/system/rc-local.service
##echo " SysVStartPriority=99" >> /etc/systemd/system/rc-local.service
echo "" >> /etc/systemd/system/rc-local.service
echo "[Install]" >> /etc/systemd/system/rc-local.service
echo " WantedBy=multi-user.target" >> /etc/systemd/system/rc-local.service

systemctl enable rc-local
systemctl start rc-local

## finetune for heavy log
#sed -i "s/#RateLimitIntervalSec=30s/RateLimitIntervalSec=0/"  /etc/systemd/journald.conf
#sed -i "s/#RateLimitBurst=10000/RateLimitBurst=0/"  /etc/systemd/journald.conf
#systemctl restart systemd-journald

## for SDN to setup not need in 8.1
#echo "" >> /etc/network/interfaces
#echo "source /etc/network/interfaces.d/*" >> /etc/network/interfaces


## ssh Keep Alive
mkdir /root/.ssh 2>/dev/null 
echo "Host * " > /root/.ssh/config
echo "    ServerAliveInterval 30" >> /root/.ssh/config
echo "    ServerAliveCountMax 20" >> /root/.ssh/config
# for other new users
mkdir /etc/skel/.ssh 2>/dev/null
echo "Host * " > /etc/skel/.ssh/config
echo "    ServerAliveInterval 30" >> /etc/skel/.ssh/config
echo "    ServerAliveCountMax 20" >> /etc/skel/.ssh/config


## make cpan auto yes for pre-requist modules of perl
(echo y;echo o conf prerequisites_policy follow;echo o conf commit)|cpan 1>/dev/null


#Disable vim automatic visual mode using mouse
echo "\"set mouse=a/g" >  ~/.vimrc
echo "syntax on" >> ~/.vimrc
##  for  other new users
echo "\"set mouse=a/g" >  /etc/skel/.vimrc
echo "syntax on" >> /etc/skel/.vimrc

## centos 7 like bash ..for all inteactive 
echo "" >> /etc/bash.bashrc
echo "alias cp='cp -i'" >> /etc/bash.bashrc
echo "alias l.='ls -d .* --color=auto'" >> /etc/bash.bashrc
echo "alias ll='ls -l --color=auto'" >> /etc/bash.bashrc
echo "alias ls='ls --color=auto'" >> /etc/bash.bashrc
echo "alias mv='mv -i'" >> /etc/bash.bashrc
echo "alias rm='rm -i'" >> /etc/bash.bashrc
echo "export EDITOR=vi" >> /etc/bash.bashrc
echo "export HISTTIMEFORMAT=\"%d/%m/%y %T \" " >> /etc/bash.bashrc

#echo "export LC_CTYPE=en_US.UTF-8" >> /etc/bash.bashrc
#echo "export LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc

## for crontab 
export EDITOR=vim

echo "Basic Added."

