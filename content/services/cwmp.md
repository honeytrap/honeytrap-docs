---
title: CWMP
linktitle: Cwmp tr-069 
description: Configurations for CPE WAN Management Protocol tr-069 service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 50
weight: 40
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

CWMP service will simulate an Auto Configuration Server (ACS) which allows the management of a Customer Premises Equipement (CPE) through the text based protocol CWMP.


## Syntax

```bash
[service.<nickname_of_cwmpService>]
type="cwmp"
```


## Arguments in config file

There are no arguments in CWMP service.


## Example

```bash
[service.cwmp01]
type="cwmp"

[[port]]
port="tcp/3890"
services=["cwmp01"]
```

## How to test

<...>

## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
CWMP | <span style="color:green">yes</span> | <span style="color:green">yes</span>
