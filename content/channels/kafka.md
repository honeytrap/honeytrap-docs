---
title: Kafka
linktitle: Kafka
description: Configuration for Kafka channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 60
weight: 60
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is Kafka?

Kafka is a distributed streaming platform.

## Description

The kafka channel will put all the events on a kafka queue.

## Syntax

```bash
[channel.<you_choose>]
type="kafka"
```

## Arguments in configuration file

There are `2` arguments in Kafka channel:

 argument  | default setting | explanation
  ---  | --- | ---
`brokers` |  <span style="color:red">none</span> | The Kafka server/cluster.
`topic` | <span style="color:red">none</span> | Stream of records.



## Example

```bash
[channel.kafka]
type="kafka"
<...>
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
