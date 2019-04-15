---
title: DNS-Proxy
linktitle: DNS Proxy 
description: Configurations for DNS-Proxy service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 60
weight: 60
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

DNS Proxy service will forward dns request to a specific destination thanks to a director.


## Syntax

```bash
[service.<nickname_of_dnsProxy>]
type="dns-proxy"
```


## Arguments in config file

There are no arguments in DNS Proxy service.



## Example

```bash
[service.dnsproxy01]
type="dns-proxy"
director="googledns01"

[[port]]
port="udp/53"
services=["dnsproxy01"]

[director.googledns01]
type="forward"
host="8.8.8.8"
```

## How to test

`echo "064f0120000100000000000106676f6f676c6503636f6d00000100010000291000000000000000" | xxd -r -p | nc -u localhost 53`


## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
dns-proxy | <span style="color:green">yes</span> | <span style="color:green">yes</span>
