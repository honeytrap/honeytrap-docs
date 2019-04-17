---
title: SSH-Simulator
linktitle: SSH-Simulator
description: Configurations for Secure Shell Simulator service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 240
weight: 240
toc: true
---
## What is SSH?

`SSH` is the abbreviation for `Secure SHell`, which is a  cryptographic network
protocol for secure operations over a insecure network.

## Description

The `SSH-Simulator` service will simulate a Secured Shell with limited interaction.

## Syntax

```bash
[service.<nickname_of_ssh-simulator>]
type="ssh-simulator"
```


## Arguments in config file

There are `5` possible arguments in `ssh-simulator` service:

 argument  | default setting | explanation
  ---  | --- | ---
`banner` |  <span style="color:green">SSH-2.0-OpenSSH_6.6.1p1 2020Ubuntu-2ubuntu2</span> | Set the `banner` of your shell.
`credentials` | <span style="color:green">all</span> | Set the `credentials` accepted for your shell.
`private-key` | <span style="color:green">random</span> | Set a ssh `private-key`.
`max-auth-tries` | <span style="color:green">unlimited</span> | Set the `maximum-number` of authentication attempts allowed.
`motd` | <span style="color:blue">↓ see below ↓</span> | Set the `motd` of your shell.

```bash
Welcome to Ubuntu 16.04.1 LTS (GNU/Linux 4.4.0-31-generic x86_64)

* Documentation:  https://help.ubuntu.com
* Management:     https://landscape.canonical.com
* Support:        https://ubuntu.com/advantage

524 packages can be updated.
270 updates are security updates.


----------------------------------------------------------------
Ubuntu 16.04.1 LTS                          built 2016-12-10
----------------------------------------------------------------
last login: Sun Nov 19 19:40:44 2017 from 172.16.84.1
```

## Example

```bash
[service.sshsimulator]
type="ssh-simulator"

[[port]]
port="tcp/8022"
services=["sshsimulator"]
```

## How to test

```bash
ssh -p 8022 root@[IP_ADDRESS]
```

#### The test explained

With `ssh` we request acces to a specific port `-p` to `8022` on address `root@[IP_ADDRESS]`.

#### The result

```bash
root@[IP_ADDRESS]'s password: # [type anything]
Welcome to Ubuntu 16.04.1 LTS (GNU/Linux 4.4.0-31-generic x86_64)

* Documentation:  https://help.ubuntu.com
* Management:     https://landscape.canonical.com
* Support:        https://ubuntu.com/advantage

524 packages can be updated.
270 updates are security updates.


----------------------------------------------------------------
Ubuntu 16.04.1 LTS                          built 2016-12-10
----------------------------------------------------------------
last login: Sun Nov 19 19:40:44 2017 from 172.16.84.1
root@host:~$
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
ssh-simulator | <span style="color:green">yes</span> | <span style="color:green">yes</span>
