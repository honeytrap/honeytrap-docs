---
title: Marija
linktitle: Marija
description: Configuration for Marija channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 70
weight: 70
toc: true
---
## What is Marija?

`Marija` provides big data visualization trough graphs.

[More information about Marija](https://marija.io/)

## Description

The `Marija` channel will log all events to `Marija`.

## Syntax

```bash
[channel.<you_choose>]
type="marija"
```

## Arguments in configuration file

There are `2` arguments in `Marija` channel:

 argument  | default setting | explanation | required
  ---  | --- | --- | ---
`url` |  <span style="color:red">no</span> | Set the `url` for Marija. | <span style="color:green">yes</span>
`insecure` | <span style="color:red">no</span> | `true` will disable certificate validation. | <span style="color:red">no</span>

## Example

```bash
[channel.marija]
type="marija"
url="http://127.0.0.1:9200/honeytrap"
insecure=true
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
