---
title: EOS
linktitle: EOS
description: Configurations for EOS service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 100
weight: 90
toc: true
---

## What is EOS?
EOS is a blockchain protocol.

## Description

The EOS service will simulate a EOS node.

## Syntax

```bash
[service.<nickname_of_eosService>]
type="eos"
```


## Arguments in config file

There are no arguments in EOS service.


## Example

```bash
[service.eos01]
type="eos"

[[port]]
port="tcp/8888"
services=["eos01"]
```

## How to test

```bash
curl -X GET http://[IP_ADDRESS]:8888/v1/wallet/list_keys
```

You receive the list with EOS keys stored in the EOS service.

## Availability

 | Linux | MacOS |
--- | --- | --- |
eos | <span style="color:green">yes</span> | <span style="color:green">yes</span>



## Commands implemented

 | available |
 --- | --- |
/v1/wallet/list_keys | <span style="color:green">yes</span>
