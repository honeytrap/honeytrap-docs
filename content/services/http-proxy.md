---
title: HTTP-Proxy
linktitle: HTTP-Proxy
description: Configurations for HTTP-Proxy service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 130
weight: 140
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

The HTTP proxy will proxy all traffic through to the director. This could be a LXC director or a remote host.  


## director

```bash
[service.<nickname_of_httpProxyService>]
type="http-proxy"
```


## Arguments in config file

There are no arguments in HTTP Proxy service.

## Example

```bash
[service.httpProxy]
type="http-proxy"
director="lxc"

[[port]]
port="tcp/8080"
services=["httpProxy"]

[director.lxc]
type="lxc"
<...>
```

## How to test

<...>


## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
http-proxy | <span style="color:green">yes</span> | <span style="color:green">yes</span>
