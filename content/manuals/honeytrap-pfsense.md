---
title: Install HoneyTrap on pfSense
linktitle: HoneyTrap on pfSense
description: How to install HoneyTrap on pfSense.
date: 2019-02-13
keywords: [setup, pfSense]
menu:
  docs:
    parent: "manuals"
    weight: 35
weight: 35
toc: true
---

## Requirements
- A FreeBSD machine for building the package. Check [pfSense docs](https://docs.netgate.com/pfsense/en/latest/releases/versions-of-pfsense-and-freebsd.html) to find out which version of FreeBSD you need.
- git must be installed on the FreeBSD machine
## Build and install package
All of the following steps except the last one must be done on the FreeBSD machine.
1. Clone the repository and copy the directory to the ports collection.
   ```bash
   git clone https://github.com/honeytrap/honeytrap-pfsense-plugin.git
   cp -R honeytrap-pfsense-plugin/pfSense-pkg-HoneyTrap /usr/ports/security
   ```
2. Compile the packages
   ```bash
   make -C /usr/ports/security/honeytrap NO_DEPENDS=yes package
   make -C /usr/ports/security/pfSense-pkg-HoneyTrap NO_DEPENDS=yes package
   ```
3. Copy the compiled packages to a pfSense machine
   ```bash
   scp /usr/ports/security/honeytrap/work/pkg/honeytrap-*.txz root@example:~
   scp /usr/ports/security/pfSense-pkg-HoneyTrap/work/pkg/pfSense-pkg-HoneyTrap-*.txz root@example:~
   ```
4. On the pfSense machine install the packages.
   ```bash
   pkg add pfSense-pkg-HoneyTrap-*.txz
   ```
## Configuration
![](/manuals/images/pfsense-config.png)
1. Enable the HoneyTrap service. When checked the service is started automatically.
2. Keep HoneyTrap configuration and related files when the package is installed, updated or deinstalled. When unchecked only the log files are kept.
3. When enabled all lines are removed from the service log file before is starts.
4. The path to the HoneyTrap config file. The file must be present on the system.
5. Button to start HoneyTrap manually. If HoneyTrap is already running the button is replaced with a button to restart and one to stop it.
6. Configuration page for the plugin.
7. An overview of service statuses.
8. Page to view the output of the HoneyTrap service
9. Link to pfSense documentation.
