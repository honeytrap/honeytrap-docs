---
title: SMTP
linktitle: SMTP
description: Configurations for Simple Mail Transfer Protocol service
date: 2018-10-20
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 200
weight: 210
toc: true
---

## What is SMTP?

`SMTP` is the abbreviation for `Small Mail Transfer Protocol`, a communication
protocol for sending e-mail.

## Description

The `SMTP` service will simulate a `SMTP` server.

## Syntax
```bash
[service.<nickname_of_smtp>]
type="smtp"
```

## Arguments in config file

There is `1` argument in `smtp` service:

 argument  | default setting | explanation
  ---  | --- | ---
`banner` |  <span style="color:green">SMTPd</span> | Set the `banner` of your SMTP server.

## Example
```bash
[service.smtp]
type="smtp"

[[port]]
port="tcp/25"
services=["smtp"]
```

## How to test

```bash
nmap -Pn [IP_ADDRESS] -p 25
```
#### The result
The result should contain the following:
```bash
PORT   STATE    SERVICE
25/tcp filtered smtp
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
smtp | <span style="color:green">yes</span> | <span style="color:green">yes</span>
