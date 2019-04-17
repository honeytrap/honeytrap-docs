---
title: TFTP
linktitle: TFTP
description: Configurations for Trivial File Transfer Protocol service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 260
weight: 260
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

TFTP service will simulate a Trivial File Transfer Protocol server which returns an error "file not found".


## Syntax

```bash
[service.<nickname_of_tftp>]
type="tftp"
```


## Arguments in config file

There are no arguments in `TFTP` service.


## Example

```bash
[service.tftp]
type="tftp"

[[port]]
port="udp/69"
services=["tftp"]
```

## How to test

```bash
# Linux
tftp -v [IP_ADDRESS] -c put myfile.txt

# MacOS
> tftp
tftp> connect
(to) [IP_ADDRESS]
tftp> get
(files) myfile.txt
Error code 256:
tftp> quit
```


## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
tftp | <span style="color:green">yes</span> | <span style="color:green">yes</span>
