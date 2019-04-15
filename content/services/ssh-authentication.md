---
title: SSH-Authentication
linktitle: SSH-Authentication
description: Configurations for Secure Shell Authentication service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 210
weight: 220
toc: true
---
## What is SSH?

`SSH` is the abbreviation for `Secure SHell`, which is a  cryptographic network
protocol for secure operations over a insecure network.

## Description

The `SSH Authentication` service will capture all `username`, `password` and `public
keys` that are being used to authenticate to the SSH-server. It will always return an error
/ permission denied.

## Syntax

```bash
[service.<nickname_of_ssh-auth>]
type="ssh-auth"
```


## Arguments in config file

There are `2` arguments in `ssh-auth` service:

 argument  | default setting | explanation
  ---  | --- | ---
`banner` |  <span style="color:green">SSH-2.0-OpenSSH_6.6.1p1 2020Ubuntu-2ubuntu2</span> | Set the `banner` of your shell.
`private-key` | <span style="color:green">random</span> | Set a ssh `private-key`.



## Example

```bash
[service.sshauth]
type="ssh-auth"

[[port]]
port="tcp/8022"
services=["sshauth"]
```

## How to test

```bash
ssh -p 8022 root@[IP_ADDRESS]
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
ssh-auth | <span style="color:green">yes</span> | <span style="color:green">yes</span>
