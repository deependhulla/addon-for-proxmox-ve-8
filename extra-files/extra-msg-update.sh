#!/bin/bash


## as its No Intiernet Setup i,we cannot verify subscription online
## so simple change message on screen
/bin/cp /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js /opt/old-config-files/old-proxmoxlib.js-`date +%s` 2>/dev/null

sed -i "s/gettext('No valid subscription')/'Welcome to Proxmox VE'/" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js 
sed -i "s/fmt(gettext('Non production-ready repository enabled\!'), 'exclamation-circle warning');/fmt('Open Source based setup enabled\!', 'check-circle good');/" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js 
sed -i "s/Proxmox.Utils.getNoSubKeyHtml(res.data.url)/'More detail available in Documentation'/" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js 

sed -i "s/addWarn(gettext('The no-subscription repository is not recommended for production use\!'));/addWarn('No Internet for live update');/" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js 

