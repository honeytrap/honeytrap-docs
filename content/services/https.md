---
title: HTTPS
linktitle: HTTPS
description: Configurations for HTTP Secure service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 150
weight: 130
toc: true
---
## What is HTTPS?

`HTTPS` is the abbreviation for `Hyper Text Transport Protocol Secure`, which is
the extension for `HTTP`, which is the foundation of the `World Wide Web`.

## Description

The `HTTPS` service will simulate the `TLS` handshake with a server.


## Syntax

```bash
[service.<nickname_of_https>]
type="https"
```


## Arguments in config file

There are no arguments in HTTPS service.

## Example

```bash
[service.https]
type="https"

[[port]]
port="tcp/8080"
services=["https"]
```

## How to test

In your browser:
```bash
https://[IP_ADDRESS]:8080
```

#### The result

In the bottom bar of the browser you can see the browser making a TLS-hanshake attempt.
After a while the request will time out.

## Availability

 | Linux | MacOS |
--- | --- | --- |
https | <span style="color:green">yes</span> | <span style="color:green">yes</span>
