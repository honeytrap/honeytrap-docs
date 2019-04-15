---
title: ADB
linktitle: Android Debug Bridge
description: Configurations for Android Debug Bridge service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 20
weight: 10
toc: true
---
## What is Android Debug Bridge?

Android Debug Bridge or ADB is a software-interface between a Android-device and a computer allowing direct communication between the two. With the ADB-interface it is possible to execute commands on the Android-device via the computer.

## Description

Android Debug Bridge service will listen for commands sent from ADB clients and will simulate a Unix shell.

## Syntax

```bash
[service.<nickname_of_adbService>]
type="adb"
```

## Arguments in configuration file

There are no arguments in ADB service.

## Example

```bash
[service.adb01]
type="adb"

[[port]]
port="tcp/5037"
services=["adb01"]
```

## How to test

```bash
echo "434e584e00000001001000000700000032020000bcb1a7b1686f73743a3a00" |
xxd -r -p | nc [IP_ADDRESS] 5037
```
#### The test explained
First the teststring is echoed to `xxd` which reverts the hex and sends it trough to `netcat` with the target's `[IP_ADDRESS]` and port 5037 which is the Android Debugging Bridge port.

#### The result
Expect the result to be something like this:
```bash
CNXNY device::ro.product.name=dreamltexx;ro.product.model=SM-G950F;ro.product.device=dreamlte;%
```


## Availability

 | Linux | MacOS |
--- | --- | --- |
adb | <span style="color:green">yes</span> | <span style="color:green">yes</span>
