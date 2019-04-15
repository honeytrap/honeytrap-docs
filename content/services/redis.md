---
title: Redis
linktitle: Redis
description: Configurations for Redis service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 190
weight: 190
toc: true
---

## What is Redis?

`Redis` is a in-memory data structure used, as a database, cache and message-broker.

## Description

The `Redis` service will simulate a `Redis` server.   

## Syntax

```bash
[service.<nickname_of_redisService>]
type="redis"
```

## Arguments in config file

There are `2` arguments in `Redis` service:

 argument  | default setting | explanation
  ---  | --- | ---
`version` |  <span style="color:green">4.0.6</span> | Set the `version` of your `Redis` Server.
`os` | <span style="color:green">Linux 4.9.49-moby x86_64</span> | Set the `os` of your `Redis` Server.

## Example

```bash
[service.redis]
type="redis"
version="4.0.2"
os="Linux 2.6.32-431.el6.x86_64 x86_64"

[[port]]
port="tcp/6379"
services=["redis"]
```

## How to test

```bash
echo “2a310d0a24340d0a696e666f0d0a” | xxd -r -p | nc [IP_ADDRESS] 6379 &> out
```

#### The test explained
First the teststring is echoed to `xxd` which reverts the hex and sends it trough to `netcat` with the target's `[IP_ADDRESS]` and port 6379 which is the Redis port.

#### The result
The result is long, and should end with something like:
```txt
# Cluster
cluster_enabled:0

# Keyspace

```

## Availability

 | Linux | MacOS |
--- | --- | --- |
redis | <span style="color:green">yes</span> | <span style="color:green">yes</span>



## Commands implemented

 | available |
 --- | --- |
info | <span style="color:green">yes</span>
