---
title: Tap
linktitle: Tap 
description: Configuration for Tap listener
date: 2018-10-31
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 60
weight: 20
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## Description

The `tap` listener will log all events from a tap interface.

## What is TAP?

TAP simulates a link layer device. TAP operates with Ethernet - layer 2 packets. TAP is used for creating a network bridge.

## Syntax

```bash
[listener]
type="tap"
```

## How many?

There needs to be one listener and there **can only be one**.  

## Arguments in configuration file

There are no arguments in `tap` listener.

## Example

```bash
[listener]
type="tap"
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
tap | <span style="color:green">yes</span> | <span style="color:red">no</span>
