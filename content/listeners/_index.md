---
title: Listeners
linktitle: About Listeners
description: Listen to your network interfaces for incoming traffic.
date: 2018-06-01
keywords: [concepts]
layout: single
menu:
  docs:
    parent: "listeners"
    weight: 5
weight: 20
toc: true
---

## Description

Listeners are listening to your network interfaces for incoming traffic.

Depending on the listener, you can use a custom network stack implementation, listen to every port or assign services to specific ports.

## Syntax

```bash
[listener]
type="<official_name_of_the_listener>"
```
## How many?

There needs to be one listener and there **can only be one**.

## Arguments

Depending on the listener you chose, you may have to include arguments.

## Example

Here is a example how to set the [netstack](/listeners/netstack) listener:

```bash
[listener]
type="netstack"
interface="env3"
```

## Listeners available

| Type | Linux | MacOS | Windows |
--- | --- | --- | --- |
[ <span style="text-decoration: underline">agent</span>](/listeners/agent) | <span style="color:green">yes</span> | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[<span style="text-decoration: underline">socket</span>](/listeners/socket) | <span style="color:green">yes</span> | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[<span style="text-decoration: underline">tap</span>](/listeners/tap) | <span style="color:green">yes</span> | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[<span style="text-decoration: underline">tun</span>](/listeners/tun) | <span style="color:green">yes</span> | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[<span style="text-decoration: underline">netstack</span>](/listeners/netstack) | <span style= "color:green">yes</span> | <span style="text-decoration: underline; color:red">no</span> | <span style="text-decoration: underline; color:red">no</span>
[<span style="text-decoration: underline">raw</span>](/listeners/raw) | <span style= "color:green">yes</span> | <span style="text-decoration: underline; color:red">no</span> | <span style="text-decoration: underline; color:red">no</span>
