---
title: Install HoneyTrap on FreeBSD
linktitle: HoneyTrap on FreeBSD
description: How to install HoneyTrap on FreeBSD.
date: 2019-02-13
keywords: [setup, FreeBSD]
menu:
  docs:
    parent: "manuals"
    weight: 30
weight: 30
toc: true
---

## Requirements

## Install
There are two methods to install the HoneyTrap port, via a package manager or via the ports collection. Using the package manager is only possible if the port is present in the ports repository of the FreeBSD version that'll be used.  
If you want to use the package manager you'll have to verify if the port is present in the ports repository of your FreeBSD version. This can be done by:
1. go to the ports [FreshPorts page](https://www.freshports.org/security/honeytrap/)
2. look up your FreeBSD version in the table under `Packages`
3. If a version is listen under `latest` or `quarterly` a package is available for your FreeBSD version.

### Package
The package can be installed by running `pkg install honeytrap`.  
If you want to use the package from the `latest` branch of your ports repository a couple extra steps need to be taken.
1. Copy the default repository config from `/etc/pkg/FreeBSD.config` to `/usr/local/etc/pkg/repos/FreeBSD-latest.conf`
2. Open the copy, change the config name to `FreeBSD-latest` and change `quarterly` to `latest` in the URL.
If done correctly the new config should look something like this:
```
FreeBSD-latest: {
  url: "pkg+http://pkg.FreeBSD.org/${ABI}/latest",
  mirror_type: "srv",
  signature_type: "fingerprints",
  fingerprints: "/usr/share/keys/pkg",
  enabled: yes
}
```
The package can now be install by running:
```shell
pkg install -r FreeBSD-latest honeytrap
```

### Ports collection
If you installed the ports collection along with FreeBSD the HoneyTrap port can be installed by running:
```shell
make -C /usr/ports/security/honeytrap/ install
```
If you didn't install the ports collection you'll have to install it before installing the HoneyTrap port, this can be done by running:
```shell
portsnap fetch extract
```
If the HoneyTrap port is missing from your ports collection update it before installing the HoneyTrap port by running:
```shell
portsnap fetch update
```
## Post install
By default the ports service is configured to use the data directory `/usr/local/libdata/honeytrap/` and log directory `/var/log/honeytrap/`. If you want to use different directories create them and set the access rights so the honeytrap user can access them before starting HoneyTrap, for example:
```shell
mkdir -p /tmp/honeytrap/log
chown honeytrap:honeytrap /tmp/honeytrap/log
```
### Service configuration
The service can be configured by adding one or more variables to `/etc/rc.conf` or `/etc/rc.conf.local`, the available variables are:
```
honeytrap_enable (bool):  Set to NO by default.
                          Set it to YES to enable honeytrap.
honeytrap_datadir (path): Set to /usr/local/libdata/honeytrap
                          by default.
honeytrap_config (path):  Set to /usr/local/etc/honeytrap.toml
                          by default.
```
To enable auto starting the service run:
```shell
echo honeytrap_enable="YES" >> /etc/rc.conf
```
The service should now start together with the system, a manual start can be done by running:
```shell
service honeytrap start
```
