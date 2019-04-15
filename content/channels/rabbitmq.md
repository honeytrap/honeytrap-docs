---
title: RabbitMQ
linktitle: RabbitMQ
description: Configuration for RabbitMQ channel
date: 2017-01-02
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 90
weight: 90
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is RabitMQ?

RabbitMQ is a open-source message broker.

## Description

The `rabbitmq` channel will queue all the events to a RabbitMQ Server.

## Syntax

```bash
[channel.<you_choose>]
type="rabbitmq"
```

## Arguments in configuration file

There are `2` arguments in RabbitMQ channel:

 argument  | default setting | explanation
  ---  | --- | ---
`address` |  <span style="color:red">none</span> | Set your AMQP `address`.
`queue` | <span style="color:red">none</span> | Set the AMQP `queue`.

## Example

```bash
[channel.rabbitmq]
type="rabbitmq"
address="amqp://guest:guest@localhost:5672/"
queue="honeytrap"
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
