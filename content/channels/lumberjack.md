---
title: Lumberjack
linktitle: Lumberjack
description: Configuration for Lumberjack channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 40
weight: 40
toc: true
---

## What is lumberjack?

Lumberjack is a messaging protocol developed by Elastic. It based on TCP/IP and supports TLS.

## Description

The lumberjack  channel will log all events to a lumberjack server endpoint.

## Syntax

```bash
[channel.<you_choose>]
type="lumberjack"
```

## Arguments in configuration file

There are `3` arguments in lumberjack channel:

 argument  | default setting | explanation | required
  ---  | --- | --- | ---
`url` |  <span style="color:red">no</span> | Set the `url` of your lumberjack server. | <span style="color:green">yes</span>
`tls` | <span style="color:red">no</span> | Set true if your lumberjack server supports a secure connection | <span style="color:green">yes</span>
`sync_interval` | <span style="color:red">no</span> | time in seconds to sync data to server | <span style="color:green">yes</span>


## Example

```bash
[channel.lumberjack]
type="lumberjack"
url="127.0.0.1:5044"
tls=true
sync_interval=1
```


## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
