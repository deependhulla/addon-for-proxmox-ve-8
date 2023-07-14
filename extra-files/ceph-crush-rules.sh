#!/bin/bash

ceph osd crush class ls


ceph osd crush rule create-replicated replicated_ssd default host ssd
ceph osd crush rule create-replicated replicated_hdd default host hdd
ceph osd crush rule create-replicated replicated_nvme default host nvme


ceph osd crush rule ls

## k is total Host
## m is no of host failure
#pveceph pool create <pool-name> --erasure-coding k=2,m=1
