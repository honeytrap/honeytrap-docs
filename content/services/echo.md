---
title: Echo
linktitle: Echo
description: Configurations for Echo service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 80
weight: 70
toc: true
---
## What is Echo?

Echo is a fundamental command which is frequently used in scripts or batch-files,
or as part of individual commands anywhere you need to output text.

## Description

Echo service will simply return the input.


## Syntax

```bash
[service.<nickname_of_echoService>]
type="echo"
```


## Arguments in config file

There are no arguments in Echo service.

## Example

```bash
[service.echo01]
type="echo"

[[port]]
port="udp/5555"
services=["echo01"]
```

## How to test

```bash
echo "hello DutchSec" | nc -u [IP_ADDRESS] 5555
```

#### The test explained
We `echo` a teststring and send it to `netcat` in UDP mode with the target's `[IP_ADDRESS]` and port 5555 which is the echo port.

#### The result
```bash
hello DutchSec
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
echo | <span style="color:green">yes</span> | <span style="color:green">yes</span>
