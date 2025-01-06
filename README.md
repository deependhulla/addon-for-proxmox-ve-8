# Addon for Proxmox VE 8.x

This repository provides a collection of scripts and tools designed to enhance management and streamline operations for IT administrators using Proxmox VE 8.x. These addons focus on improving console performance, providing essential utilities, and optimizing administrative workflows.

## Features

### Improved Console Performance and System Optimizations
- Interactive shell similar to RHEL/CentOS with aliases and default crontab editor as `vim`.
- Updated `vim` configuration for easier copy-paste in the console.
- Optimized `rc.local` for post-boot operations.
- Disabled IPv6 default, as mostly not needed.
- SSH keep-alive settings to prevent quick disconnections.
- Auto-commit setup for Perl CPAN.

### Essential Utilities
- **wget**: Tool for downloading files from the internet.
- **elinks**: Text-based web browser for console environments.
- **arping**: Tool to send ARP requests to verify connectivity to another host.
- **telnet**: Legacy tool for connecting to remote systems via Telnet protocol.
- **sysstat**: Performance monitoring tools (e.g., `iostat`, `sar`).
- **unzip**: Utility for extracting `.zip` files.
- **ethtool**: for Ethernet speed and link diagnostics.
- **iptraf**: for traffic and bandwidth monitoring.
- **dnsutils**: for DNS troubleshooting.
- **ipmitool**: for IKVM management.
- **lm-sensors**: for monitoring CPU temperature and other hardware stats.
- **pssh**: for parallel SSH operations.
- **screen**: for persistent terminal sessions.
- **mc**: file manager for streamlined file navigation.
- **curl**: for downloading resources.
- **vim**: editor with enhanced features.
- **php-cli**: for PHP-based scripting.
- **php-curl**: PHP extension for making HTTP requests with cURL.
- **liblocale-po-perl**: Perl module for working with Gettext `.po` files.
- **libpve-network-perl**: Proxmox-specific Perl module for managing networks.
- **ifupdown2**: Replacement for `ifupdown` with more features for managing network interfaces.
- **zfs-zed**: ZFS event daemon for monitoring and managing ZFS events.
- **nmap**: Network scanner for security auditing and discovering devices on a network.
- **openvswitch-switch**: Virtual switch for managing and monitoring virtual network bridges.
- **apt-transport-https**: Enables `apt` to fetch packages over HTTPS.
- **numactl**: NUMA (Non-Uniform Memory Access) management tools.
- **gnupg2**: GnuPG for secure key management and file encryption.
- **debconf-utils**: Tools for managing Debian package configurations.
- **pwgen**: Generates secure random passwords.
- **iftop**: Real-time network bandwidth monitoring tool.
- **htop**: Interactive process viewer.
- **iotop**: Tool to display real-time I/O usage by processes.
- **multitail**: View multiple log files in a single terminal window.
- **dnsmasq**: Lightweight DNS forwarder and DHCP server.
- **git**: for version management.
- **dos2unix**: to convert Windows/DOS content to Unix format.
- **sendemail**: for command-line SMTP email sending.
- **lm-sensors**: Hardware monitoring tools for CPU and system temperatures.
- **vnstat**: Network traffic monitor that logs bandwidth usage.
- **pigz**: Parallel implementation of gzip for faster compression.
- **frr**: Routing software suite for managing dynamic routing protocols (e.g., OSPF, BGP).
- **frr-pythontools**: Python tools for interacting with the FRR routing suite.
- **libsasl2-modules**: Authentication modules for SASL (Simple Authentication and Security Layer).
- **linux-cpupower**: Utilities for managing CPU power-saving and performance settings.
- **rsyslog**: System log daemon for logging and monitoring system events.
- **pv**: Monitors the progress of data through a pipeline.
- **lsscsi**: Displays information about SCSI devices.
- **fio**: Flexible I/O tester for measuring storage performance.
- **iperf**: Network bandwidth measurement tool.
- **lshw**: Hardware information tool.
- **nvme-cli**: Command-line tools for managing NVMe devices.
- **intel-microcode**: Intel CPU microcode updates for stability and security improvements.(AMD also supported in script)
- **multipath-tools**: Tools for managing multipath I/O for storage systems.
- **multipath-tools-boot**: Adds support for multipath configurations during system boot.
- **open-iscsi**: Implementation of the iSCSI protocol for accessing SAN storage.

Enhance your Proxmox VE (Linux) experience with these powerful tools and optimizations!
