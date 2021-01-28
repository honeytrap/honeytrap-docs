---
title: HTTP
linktitle: HTTP
description: Configurations for HyperText Transfer Protocol service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 140
weight: 120
toc: true
---
## What is HTTP?

HTTP is the abbreviation for HyperText Transfer Protocol, a application-layer
protocol primarly used for the World Wide Web as client-server model.

## Description

The HTTP service will simulate a web server.

## Syntax

```bash
[service.<nickname_of_httpService>]
type="http"
```

## Arguments in config file

There is `1` argument in `HTTP` service:

 argument  | default setting | explanation
  ---  | --- | ---
`server` |  <span style="color:green">Apache</span> | Set the `name` of your web server.

## Example

```bash
[service.http01]
type="http"
server="Nginx"

[[port]]
port="tcp/8080"
services=["http01"]
```

## How to test

```bash
curl -v GET http://[IP_ADDRESS]:8080
```

#### The test explained
With `curl` in `-v` verbose mode perform a `GET` request to `http://[IP_ADDRESS]:[PORT]`.

#### The result

```bash
* Rebuilt URL to: GET/
* Could not resolve host: GET
* Closing connection 0
curl: (6) Could not resolve host: GET
* Rebuilt URL to: http://[IP_ADDRESS]:8080/
*   Trying [IP_ADDRESS]...
* TCP_NODELAY set
* Connected to [IP_ADDRESS] ([IP_ADDRESS]) port 8080 (#1)
> GET / HTTP/1.1
> Host: [IP_ADDRESS]:8080
> User-Agent: curl/7.54.0
> Accept: */*
>
< HTTP/1.1 200 OK
< Server: Nginx
< Content-Length: 0
<
* Connection #1 to host [IP_ADDRESS] left intact
```


## Availability

 | Linux | MacOS |
--- | --- | --- |
http | <span style="color:green">yes</span> | <span style="color:green">yes</span>
