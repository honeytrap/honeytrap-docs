---
title: File
linktitle: File
description: Configuration for File channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 50
weight: 50
toc: true
---

## Description

The `File` channel will save all the events into a `file`.

## Syntax

```bash
[channel.<you_choose>]
type="file"
```

## Arguments in configuration file

There are `3` arguments in `File` channel:

 argument  | default setting | explanation | required
  ---  | --- | --- | ---
`maxsize` |  <span style="color:green">1073741824 bytes (1gb)</span> | Set the `maximal size` of your log file. | <span style="color:red">no</span>
`filename` | <span style="color:red">no</span> | Set the `name` of the file. | <span style="color:green">yes</span>
`timeout` | <span style="color:green">5 **s**</span> | Save in the file every `timeout`. | <span style="color:red">no</span>

**s** seconds  
**mcs** microseconds  
**ns** nanoseconds  
**ms** milliseconds  
**m** minutes  
**h** hours  



## Example

```bash
[channel.file01]
type="file"
filename="/var/log/honeytrap.log"
maxsize=536870912
timeout="1h"   # Every 1 hour
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
