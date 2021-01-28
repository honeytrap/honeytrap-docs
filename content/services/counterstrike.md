---
title: Counterstrike
linktitle: Counterstrike
description: Configurations for Counterstrike service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 40
weight: 30
toc: true
---
## What is Counterstrike?

Counterstrike is a first-person shooter multi player video game.


## Description

Counterstrike service will simulate a Counterstrike gameserver.


## Syntax

```bash
[service.<nickname_of_CounterstrikeService>]
type="counterstrike"
```


## Arguments in config file

There are no arguments in Counterstrike service.

## Example

```bash
[service.counterstrike01]
type="counterstrike"

[[port]]
port="udp/27016"
services=["counterstrike01"]
```

## How to test

```bash
echo "ffffffff54536f7572636520456e67696e6520517565727900" | xxd -r -p |
nc -u [IP_ADDRESS] 27016
```

#### The test explained
First the teststring is echoed to `xxd` which reverts the hex and sends it trough to `netcat` in UDP mode with the target's `[IP_ADDRESS]` and port 27016 which is the Counterstrike Global Offense port.

#### The result
Expect the result to be something like this:

```bash
ICounter-Strike: Global Offensivede_dust2csgoCounter-Strike: Global Offensive
dl1.36.3.4ivalve_ds,empty,secure
```
## Platform Availability

 | Linux | MacOS |
--- | --- | --- |
counterstrike | <span style="color:green">yes</span> | <span style="color:green">yes</span>


## Commands implemented

 | available |
 --- | --- |
COUNTERSTRIKE_A2S_INFO | <span style="color:green">yes</span>
COUNTERSTRIKE_A2S_PLAYER  | <span style="color:green">yes</span>
COUNTERSTRIKE_A2S_RULES  | <span style="color:green">yes</span>
COUNTERSTRIKE_A2S_SERVERQUERY_GETCHALLENGE | <span style="color:green">yes</span>
COUNTERSTRIKE_A2A_PING  | <span style="color:green">yes</span>
