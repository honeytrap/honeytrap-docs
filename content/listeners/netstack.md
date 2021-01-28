---
title: Netstack
linktitle: Netstack
description: Configuration for Netstack listener
date: 2018-10-31
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 30
weight: 20
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## Description

The `netstack` listener is a custom network stack implementation.

## Syntax

```bash
[listener]
type="netstack"
```

## How many?

There needs to be one listener and there **can only be one**.  

## Arguments in configuration file

There are `3` arguments in the `netstack` listener:

 argument  | default setting | explanation
  ---  | --- | ---
`addr` |  <span style="color:red">none</span> | Set the `address` of <...>
`interfaces` | <span style="color:red">none</span> | Set the list of  `interfaces` you want to listen on.  <..>
`debug` | <span style="color:red">none</span> | `true` will debug in your logs..

## Example
<!-- TODO add better example including the other arguments -->
```bash
[listener]
type="netstack"
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
netstack | <span style="color:green">yes</span> | <span style="color:red">no</span>
