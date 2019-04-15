---
title: Logging
linktitle: Logging configuration
description: Configurations for Logging
date: 2018-10-31
categories: [configuration]
menu:
  docs:
    parent: "logging"
    weight: 10
weight: 60
toc: true
---

## Description

The `logging` configuration section in the config file defines the `logging backend`, needed to view log messages.


## Syntax

```bash
[[logging]]
output = ""
level = ""
```

## How many?

There needs to be one `logging` and there **can only be one**.  

## Arguments in configuration file

There are `2` arguments in a `logging` configuration:

 argument  | default setting | explanation
  ---  | --- | ---
`output` |  <span style="color:red">no</span> | Set the `output`.
`level` | <span style="color:red">no</span> | Set the `level`.

`output` defines the stream you want to use for `logging`.
It can be either `stdout`, `stderr`, or the `name` of a file.

`level` defines the minimal level of events you want to log.
`debug` is the smallest level where all the logs appear.
On the contrary, `critical` is the highest level and would only log critical events.

More informations on the[ level field](https://github.com/op/go-logging#example).

## Example

```bash
[[filter]]
output="out.txt"
level="debug"
```
