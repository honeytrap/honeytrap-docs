---
title: SSH-Jail
linktitle: SSH-Jail
description: Configurations for Secure Shell Jail service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 220
weight: 230
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is SSH?

`SSH` is the abbreviation for `Secure SHell`, which is a  cryptographic network
protocol for secure operations over a insecure network.

## Description

The SSH Jail service will <...>

## Syntax

```bash
[service.<nickname_of_ssh-jail>]
type="ssh-jail"
```


## Arguments in config file

There are `4` arguments in `ssh-jail` service:

 argument  | default setting | explanation
  ---  | --- | ---
`banner` |  <span style="color:green">SSH-2.0-OpenSSH_6.6.1p1 2020Ubuntu-2ubuntu2</span> | Set the `banner` of your shell.
`credentials` | <span style="color:green">all</span> | Set the `credentials` accepted for your shell.
`private-key` | <span style="color:green">random</span> | Set a ssh `private-key`.
`motd` | <span style="color:green">see below</span> | Set the `motd` of your shell.

`motd`:
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
[service.sshjail]
type="ssh-jail"

[[port]]
port="tcp/8022"
services=["ssh-jail"]
```

## How to test

```bash
ssh -p 8022 root@127.0.0.1
```
#### The test explained

With `ssh` we request acces to a specific port `-p` to `8022` on address `root@[IP_ADDRESS]`.

#### The result

```bash
root@[IP_ADDRESS]'s password:
```


## Availability

 | Linux | MacOS |
--- | --- | --- |
ssh-jail | <span style="color:green">yes</span> | <span style="color:red">no</span>
