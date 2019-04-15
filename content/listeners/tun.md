---
title: Tun
linktitle: Tun
description: Configuration for Tun listener
date: 2018-10-31
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 70
weight: 20
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

The `tun` listener will log all events from a tun interface.

## What is TUN?

TUN or NetworkTUnnel simulate a network layer and work at layer 3 in the network stack. Example use for TUN is in VPN-Connections. It can only accept IP-Packets and sometimes is even restricted to IPv4.

## Syntax

```bash
[listener]
type="tun"
```

## How many?

There needs to be one listener and there **can only be one**.  

## Arguments in configuration file

There are no arguments in `tun` listener.

## Example

```bash
[listener]
type="tun"
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
tun | <span style="color:blue"><...></span> | <span style="color:green">yes</span>
