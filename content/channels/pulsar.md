---
title: Pulsar
linktitle: Pulsar
description: Configuration for Pulsar channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 80
weight: 80
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is Pulsar?

Pulsar is a open-source distributed pub-sub messaging system.

## Description

The Pulsar channel will send events to a Pulsar Producer.

## Syntax

```bash
[channel.<you_choose>]
type="pulsar"
```

## Arguments in configuration file

There are `2` arguments in Pulsar channel:

 argument  | default setting | explanation
  ---  | --- | ---
`url` |  <span style="color:red">none</span> | Set the `url` of your Pulsar Producer.
`insecure` | <span style="color:red">none</span> | `true` will disable certificate validation.

## Example

```bash
[channel.pulsar]
type="pulsar"
url="pulsar://localhost:6650"
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
