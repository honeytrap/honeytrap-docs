---
title: VNC
linktitle: VNC
description: Configurations for Virtual Network Computing service
date: 2018-10-20
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 270
weight: 260
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is VNC?

`VNC` is the abbreviation for `Virtual Network Computer`, which is a graphical
desktop-sharing system for remotely controlling a computer from another computer.

## Description

The `VNC service` will simulate a VNC Environment.   
It will capture the authentication and connection informations.


## Syntax

```bash
[service.<nickname_of_vncService>]
type="vnc"
```


## Arguments in config file

There are `2` arguments in `VNC` service:

 argument  | default setting | explanation
  ---  | --- | ---
`image` |  <span style="color:red">none</span> | Set the `image` of your desktop.
`server-name` | <span style="color:red">none</span> | Set the `name` of your server.


## Example

```bash
[service.vnc]
type="vnc"
image="/data/images/desktop.png"
server-name="WS-3244"

[[port]]
port="tcp/5900"
services=["vnc"]
```

## How to test
In a browser:
```bash
vnc://[IP_ADDRESS]:5900
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
vnc | <span style="color:green">yes</span> | <span style="color:green">yes</span>
