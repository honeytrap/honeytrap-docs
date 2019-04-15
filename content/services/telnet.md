---
title: Telnet
linktitle: Telnet
description: Configurations for Telnet service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 250
weight: 250
toc: true
---
## What is Telnet?

Telnet is a protocol used to provide a bi-directional textual communication
between computers in a network via TCP/IP.

## Description

The Telnet service will simulate a Telnet server.   

## Syntax

```bash
[service.<nickname_of_telnetService>]
type="telnet"
```

## Arguments in config file

There are `2` arguments in `telnet` service:

 argument  | default setting | explanation
  ---  | --- | ---
`prompt` |  <span style="color:green">$</span> | Set the `prompt` of your server
`motd` | <span style="color:blue">↓ see below ↓</span> | Set the `motd` of your server.

```bash
********************************************************************************
*             Copyright(C) 2008-2015 Huawei Technologies Co., Ltd.             *
*                             All rights reserved                              *
*                  Without the owner's prior written consent,                  *
*           no decompiling or reverse-engineering shall be allowed.            *
* Notice:                                                                      *
*                   This is a private communication system.                    *
*             Unauthorized access or use may lead to prosecution.              *
********************************************************************************

Warning: Telnet is not a secure protocol, and it is recommended to use STelnet.

Login authentication


```

## Example

```bash
[service.telnet]
type="telnet"
prompt=">"

[[port]]
port="tcp/23"
services=["telnet"]
```

## How to test

```bash
> telnet [IP-ADDRESS] 23
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
telnet | <span style="color:green">yes</span> | <span style="color:orange">brew install telnet</span>
