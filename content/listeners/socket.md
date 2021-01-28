---
title: Socket
linktitle: Socket
description: Configuration for Socket listener
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

- Supported Modes: high- and low-interaction
- Network protocols: IPv4 and IPv6
- TLS capable: no
- OS: linux, darwin, windows


## Description

The `socket` listener allows to choose on which ports you want to listen on as "providers" of traffic.

When starting HoneyTrap with a Socket listener, for each port opened you will be displayed:

```bash
09:54:45.990 listeners/socket ▶ INFO 00b Listener started: tcp/:8022
```

This means that HoneyTrap is now listening on tcp/8022.  

Use `type="netstack"` to activate this listener.


## Syntax

```bash
[listener]

# the listener type.
type="socket"
```

## How many?

There needs to be one listener and there **can only be one**.  

However, you can define and open several ports linked to several services.


## Arguments in the configuration file

 argument  | default setting | explanation
  ---  | --- | ---
`type` |  <span style="color:red">none</span> | the listener type (="socket") Required.


## Example

Listen on port 80 for HTTP events.
```bash
[listener]
type="socket"

[service.http01]
type="http"

[[port]]
port="tcp/80"
services=["http01"]

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output="stdout"
level="debug"
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
socket | <span style="color:green">yes</span> | <span style="color:green">yes</span>
