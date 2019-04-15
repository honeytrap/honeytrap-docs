---
title: Services
linktitle: About Services
description: Emulate or proxy specific traffic.
date: 2018-06-01
layout: single
keywords: [concepts]
menu:
  docs:
    parent: "services"
    weight: 5
weight: 30
toc: true
---

## Description

Services will emulate or proxy specific traffic.

Emulated services will have programmed responses to requests while proxy services will proxy incoming traffic to the director defined host.


## Syntax

```bash
[service.<you_choose_the_nickname_of_the_service>]
type="<official_name_of_the_service>"
# .. arguments

[[port]]
port=["<protocol>/<port>",..]
services=["nickname_of_the_service"]
```

## How many?

You can define as many services as you want.

## Arguments

Each service has its own arguments.

You can use your own one in the configuration file or get the default one.
You can find the default one of each service in their[ configuration documentation.](/services/#services-available).

## [[port]]

Each service needs to have a port defined. You need to configure that in the config file.

> To be more specific, it is each opened port which needs a service to be defined.

```bash
port=["<protocol>/<port>",..]
services=["nickname_of_the_service_1","nickname_of_the_service_2",..]
```

For one or several ports `port=["tcp/8022","tcp/8023",..]`, you can define one or several services.  

When the HoneyTrap server is starting, it will download from your config file the list of services you defined for a/several port(s).
Then, it will choose the most suitable service and link this service to the port.


## Example

A example for configuring a [ssh-simulator](/services/ssh-simulator):

```bash
[service.ssh-simulator01]
type="ssh-simulator"
credentials=["root:root", "root:password"]

[[port]]
ports=["tcp/8022", "tcp/8023"]
services=["ssh-simulator01"]
```

## Services available
<br>

Service | Linux | MacOS
--- | --- | --- |
[ <span style="text-decoration: underline">adb</span>](/services/adb) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">copy</span>](/services/copy) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">counterstrike</span>](/services/counterstrike) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">cwmp</span>](/services/cwmp) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">dns</span>](/services/dns) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">dns-proxy</span>](/services/dns-proxy) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">echo</span>](/services/echo) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">elasticsearch</span>](/services/elasticsearch) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">eos</span>](/services/eos) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ethereum</span>](/services/ethereum) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ftp</span>](/services/ftp) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">http</span>](/services/http) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">https</span>](/services/https) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">http-proxy</span>](/services/http-proxy) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ipp</span>](/services/ipp) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ldap</span>](/services/ldap) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">memcached</span>](/services/memcached) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">redis</span>](/services/redis) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">smtp</span>](/services/smtp) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ssh-authentication</span>](/services/ssh-authentication) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ssh-jail</span>](/services/ssh-jail) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ssh-simulator</span>](/services/ssh-simulator) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">ssh-proxy</span>](/services/ssh-proxy) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">telnet</span>](/services/telnet) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">vnc</span>](/services/vnc) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">tftp</span>](/services/tftp) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
