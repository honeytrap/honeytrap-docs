---
title: SSH-Proxy
linktitle: SSH-Proxy
description: Configurations for Secure Shell Proxy service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 230
weight: 230
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## Description

The SSH-Proxy service will proxy ssh traffic through the remote server or lxc connector.

## Syntax

```bash
[service.<nickname_of_sshproxy>]
type="ssh-proxy"
```


## Arguments in config file

There are `2` arguments in `ssh-proxy` service:

 argument  | default setting | explanation
  ---  | --- | ---
`banner` |  <span style="color:green">SSH-2.0-OpenSSH_6.6.1p1 2020Ubuntu-2ubuntu2</span> | Set the `banner` of your shell.
`private-key` | <span style="color:green">random</span> | Set a ssh `private-key`.



## Example

```bash
[service.sshproxy]
type="ssh-proxy"
director="lxc"

[[port]]
port="tcp/8022"
services=["sshproxy"]

[director.lxc]
type="lxc"
host="***.***.***.***"

```

## How to test

`ssh -p 8022 root@127.0.0.1`

## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
ssh-proxy | <span style="color:green">yes</span> | <span style="color:green">yes</span>
