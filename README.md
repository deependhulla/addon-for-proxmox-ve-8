# Addon for Proxmox VE 8.0 & 8.1

This repository provides a collection of scripts and tools designed to enhance management and streamline operations for IT administrators using Proxmox VE 8.0 and 8.1. These addons focus on improving console performance, providing essential utilities, and optimizing administrative workflows.

## Features

### Improved Console Performance
- Interactive shell similar to RHEL/CentOS with aliases and default crontab editor as `vim`.
- Updated `vim` configuration for easier copy-paste in the console.
- Optimized `rc.local` for post-boot operations.
- Disabled IPv6 default, as mostly not needed.

### Essential Utilities
- **Networking & Monitoring**:
  - `ethtool` for Ethernet speed and link diagnostics.
  - `iptraf` for traffic and bandwidth monitoring.
  - `dnsutils` for DNS troubleshooting.
- **Management Tools**:
  - `ipmitool` for IKVM management.
  - `lm-sensors` for monitoring CPU temperature and other hardware stats.
  - `pssh` for parallel SSH operations.
  - `screen` for persistent terminal sessions.

### Development & Scripting Enhancements
- `Git` for version management.
- `php-cli` for PHP-based scripting.
- `dos2unix` to convert Windows/DOS content to Unix format.
- `sendemail` for command-line SMTP email sending.

### User-Friendly Tools
- `MC` file manager for streamlined file navigation.
- `elinks` for console-based browsing.
- `curl` for downloading resources.
- `vim` and `nano` editors with enhanced features.

### System Optimizations
- SSH keep-alive settings to prevent quick disconnections.
- Auto-commit setup for Perl CPAN.

## Usage

Run `02-update-bash-tools.sh` to install and configure these tools and settings. Tailor the included scripts and utilities to suit your Proxmox VE environment.

---

Enhance your Proxmox VE experience with these powerful tools and optimizations!
