#!/bin/bash

## Ref : https://www.cyberciti.biz/faq/linux-xen-vmware-kvm-intel-vt-amd-v-support/

echo ""
grep -E -wo 'vmx|lm|aes' /proc/cpuinfo  | sort | uniq \
| sed -e 's/aes/Hardware encryption=Yes (&)/g' \
-e 's/lm/64 bit cpu=Yes (&)/g' -e 's/vmx/Intel hardware virtualization=Yes (&)/g'

echo ""
