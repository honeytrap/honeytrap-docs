---
title: FTP
linktitle: FTP
description: Configurations for FTP service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 120
weight: 110
toc: true
---
## What is FTP?

`FTP` is the abbreviation for `File Transport Protocol` and is a standard network protocol used to transfer files.

## Description

`FTP service` will simulate a `FTP server`.

## Syntax

```bash
[service.<nickname_of_ftp>]
type="ftp"
```


## Arguments in configuration file

There are `4` arguments in `FTP` service:

 argument  | default setting | explanation
  ---  | --- | ---
`banner` |  <span style="color:gray">-</span> | Welcome banner that shows after connecting to the server.
`passive-port-range` | <span style="color:gray">-</span> | Configure specific range of inbound passive ports.
`name` | <span style="color:gray">-</span> | Servername
`fs_base` | <span style="color:gray">-</span> | Filesystem root directory


## Example

```bash
[service.ftp]
type="ftp"

[[port]]
port="tcp/21"
services=["ftp"]
```

## How to test: webbrowser

```bash
ftp://[IP_ADDRESS]
```
### The result
![](/services/images/ftp-webbrowser.png)

## How to test: commandline

```bash
>   ftp [IP_ADDRESS]
```
Because of security issues MacOSX no longer supports `ftp` from the commandline.

### The result
![](/services/images/ftp-commandline-connected.png)

## How to test: Filezilla
- Host: [IP_ADDRESS]
- Username: anonymous
- Password: anonymous
- Port: 21

### The result
Click `quickconnect` and you will receive a notice if you should trust the provided certificate. After trusting the certificate you will see the `ftp` directory.

## FTP Service on Raspberry Pi HoneyTrap
In order to make the `FTP-service` available with the `Raspberry Pi` you need to do a few more steps on the `Pi`.

<mark>On the Pi:</mark>
```bash
$   mkdir /usr/bin/ftp
$   sudo chown -R honeytrap /usr/bin/ftp
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
ftp | <span style="color:green">yes</span> | <span style="color:orange">limited</span>
