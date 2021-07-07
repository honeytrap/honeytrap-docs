---
title: Raw
linktitle: Raw
description: Configuration for Raw listener
date: 2017-01-02
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 50
weight: 20
toc: true
---

- Supported Modes: Sensor
- Network protocols: IPv4
- TLS capable: no
- OS: linux


## Description

The `raw` listener listen on the configured network interfaces and produce events on all contacts.

Use `type="raw"` to activate this listener.


## Syntax

```bash
[listener]

# the listener type.
type="raw"

# network interfacenames to listen on.
interfaces=["iface"]

# produce arp events.
do_arp=true
```

## How many?

There needs to be one listener and there **can only be one**.  


## Arguments in the configuration file

 argument  | default setting | explanation
  ---  | --- | ---
`type` |  <span style="color:red">none</span> | the listener type (="raw")
`interfaces` |  <span style="color:red">none</span> | names of the network interfaces to use (eg. eth0).
`do_arp` | false | produce ARP events. Boolean


## Example

```bash
[listener]
type="raw"
interfaces=["eth0"]

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output="stdout"
level="debug"
```


## Availability

 | Linux | MacOS | Windows
--- | --- | --- |
| <span style="color:green">yes</span> | <span style="color:red">no</span> | <span style="color:red">no</span> |
