---
title: Socket
linktitle: Socket
description: Configuration for Socket listener
date: 2017-01-02
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 50
weight: 20
toc: true
---

## Description

The `socket` listener allows to choose on which ports you want to listen on as "providers" of traffic.

When starting HoneyTrap with a Socket listener, for each port opened you will be displayed:

```bash
09:54:45.990 listeners/socket ▶ INFO 00b Listener started: tcp/:8022
```

This means that HoneyTrap is now listening on tcp/8022.  

## Syntax

```bash
[listener]
type="socket"
```

## How many?

There needs to be one listener and there **can only be one**.  

However, you can define and open several ports linked to several services.

## Arguments in the configuration file

There are no arguments in `socket` listener.

## Example

```bash
[listener]
type="socket"
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
socket | <span style="color:green">yes</span> | <span style="color:green">yes</span>
