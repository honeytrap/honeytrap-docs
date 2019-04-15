---
title: Raven
linktitle: Raven
description: Configuration for Raven channel
date: 2017-01-02
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 100
weight: 100
toc: true
---
## What is Raven?

`Raven` is a real-time anomaly detection and alert service that identifies unauthorised or anomalous behaviour in traffic and data.

## Description

The `Raven` channel will log all events to a `Raven Server`.

## Syntax

```bash
[channel.<you_choose>]
type="raven"
```

## Arguments in configuration file

There are `3` arguments in `Raven` channel:

 argument  | default setting | explanation | required
  ---  | --- | --- | ---
`token` |  <span style="color:red">no</span> | Set the `token` identifying your HoneyTrap. | <span style="color:green">yes</span>
`server` | <span style="color:red">no</span> | Set the `url` of your Raven Server. | <span style="color:green">yes</span>
`insecure` | <span style="color:green">yes</span> | `true` will disable certificate validation. | <span style="color:red">no</span>

## Example

```bash
[channel.raven01]
type="raven"
token="token_identifying_my_HoneyTrap"
server="ws://localhost/HoneyTrap"
insecure=true
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
