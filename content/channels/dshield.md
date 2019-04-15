---
title: DShield
linktitle: DShield
description: Configuration for DShield channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 30
weight: 30
toc: true
---

## What is DShield?

DShield is a community-based collaborative firewall log correlation system that receives logs from volunteers all over the world, used as the data-collection engine behind the SANS Internet Storm Center. The goal is to raise awareness to the public by providing access to the data and share accurate current snapshots of internet attacks.

## Description

The DShield channel will log all events to the DShield API.

## Syntax

```bash
[channel.<you_choose>]
type="dshield"
```

## Arguments in configuration file

There are `4` arguments in DShield channel:

 argument  | default setting | explanation | required |
  ---  | --- | --- | ---
`user_id` |  <span style="color:red">no</span> | Set your DShield `user_id`. | <span style="color:green">yes</span>
`api_key` | <span style="color:red">no</span> | Set your DShield `api_key`. | <span style="color:green">yes</span>
`insecure` | <span style="color:red">no</span> | `true` will disable certificate validation.  | <span style="color:red">no</span>
`debug` | <span style="color:red">no</span> | Set `true` if you want to log DShield error response | <span style="color:red">no</span>

## Example

```bash
[channel.dshield]
type="dshield"
user_id="[YOUR_USER_ID]"
api_key="[YOUR_API_KEY]"
insecure=true
debug=true
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
