---
title: Memcached
linktitle: Memcached
description: Configurations for Memcached service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 180
weight: 170
toc: true
---

## What is Memcached?

Memcached is a open source, high-performance, distributed memory object caching
system often used for speeding up dynamic websites by alleviating the database load.

## Description

The Memcached service will log and reject all commands.


## Syntax

```bash
[service.<nickname_of_memcached>]
type="memcached"
```

## Arguments in config file

There are no arguments in memcached service.


## Example

```bash
[service.memcached01]
type="memcached"

[[port]]
port="udp/11211"
services=["memcached01"]
```

## How to test: echo

```bash
echo "000000000001000073746174730d0a00" | xxd -r -p | nc -u
[IP_ADDRESS] 11211
```

#### The test explained
First the teststring is echoed to `xxd` which reverts the hex and sends it trough to `netcat` with the target's `[IP_ADDRESS]` and port 11211 which is the `Memcached` port.

#### The result
The result should look something like this:
```bash

STAT pid 2080
STAT uptime 3151236
STAT time 1520550684
STAT version 1.4.13
STAT libevent 2.0.16-stable
STAT pointer_size 64
STAT rusage_user 371.247201
STAT rusage_system 1839.982991
STAT curr_connections 8
STAT total_connections 5547233
STAT connection_structures 55
STAT reserved_fds 20
STAT cmd_get 22076096
STAT cmd_set 21
STAT cmd_flush 3
STAT cmd_touch 0
STAT get_hits 22076066
STAT get_misses 30
STAT delete_misses 0
STAT delete_hits 0
STAT incr_misses 0
STAT incr_hits 0
STAT decr_misses 0
STAT decr_hits 0
STAT cas_misses 0
STAT cas_hits 0
STAT cas_badval 0
STAT touch_hits 0
STAT touch_misses 0
STAT auth_cmds 0
STAT auth_errors 0
STAT bytes_read 286857265
STAT bytes_written 129670828957
STAT limit_maxbytes 67108864
STAT accepting_conns 1
STAT listen_disabled_num 0
STAT threads 4
STAT conn_yields 0
STAT hash_power_level 16
STAT hash_bytes 524288
STAT hash_is_expanding 0
STAT expired_unfetched 0
STAT evicted_unfetched 0
STAT bytes 29828
STAT curr_items 5
STAT total_items 21
STAT evictions 0
STAT reclaimed 3^C
```

## How to test: nmap
```bash
sudo nmap -sU -sT [IP_ADDRESS] -p 11211
```

#### The result
The result shpould contain this:
```bash
PORT      STATE    SERVICE
11211/tcp filtered memcache
11211/udp open     memcache
```


## Availability

 | Linux | MacOS |
--- | --- | --- |
memcached | <span style="color:green">yes</span> | <span style="color:green">yes</span>



## Commands implemented

 | available |
 --- | --- |
stats | <span style="color:green">yes</span>
flush_all | <span style="color:green">yes</span>
add | <span style="color:green">yes</span>
replace | <span style="color:green">yes</span>
prepend | <span style="color:green">yes</span>
append | <span style="color:green">yes</span>
cas | <span style="color:green">yes</span>
set | <span style="color:green">yes</span>
