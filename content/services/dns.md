---
title: DNS
linktitle: DNS
description: Configurations for Domain Name System service
date: 2018-09-25
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 70
weight: 50
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is DNS?

`DNS` is the abbreviation for `Domain Name System`

## Description

DNS service will log every DNS request.


## Syntax

```bash
[service.<nickname_of_dnsService>]
type="dns"
```


## Arguments in config file

There are no arguments in DNS service.


## Example

```bash
[service.dns01]
type="dns"

[[port]]
port="udp/53"
services=["dns01"]
```

## How to test

`echo "064f0120000100000000000106676f6f676c6503636f6d00000100010000291000000000000000" | xxd -r -p | nc -u localhost 53`


## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
DNS | <span style="color:green">yes</span> | <span style="color:green">yes</span>



## Commands implemented

 | available |
 --- | --- |
version.bind |[<span style="text-decoration: underline; color:red">not yet</span>](/faq/dns-version-bind)
