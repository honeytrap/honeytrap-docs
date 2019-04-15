---
title: IPP
linktitle: IPP
description: Configurations for Internet Printing Protocol service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 160
weight: 150
toc: true
---
## What is IPP?

`IPP` is the abbreviation for `Internet Printing Protocol`, allowing devices to
submit print jobs to a printer or print-server.

## Description

IPP service will simulate an internet connected printer.

## Syntax

```bash
[service.<nickname_of_ipp>]
type="ipp"
```

## Arguments in config file

There are `4` arguments in `ipp` service:

 argument  | default setting | explanation
  ---  | --- | ---
`server` |  <span style="color:green">hplj1020</span> | Set the banner of your server.
`storage-dir` | <span style="color:red">none</span> | Set the name of the directory where print data is stored.
`printer-name` | <span style="color:red">none</span> | Set the name of your printer.
`size-treshold` | <span style="color:green">104857600</span> | Set the maximum-size for storage of print files.



## Example

```bash
[service.ipp]
type="ipp"
server="HP LaserJet"
storage-dir="/tmp/"

[[port]]
port="tcp/631"
services=["ipp"]
```

## How to test

```bash
nmap -Pn [IP_ADDRESS] -p 631
```

#### The test explained

With `nmap` we perform a scan with `-Pn` which skips the ping-test and simply scans, on `[IP_ADDRESS] ` for a `-p` specific port `631`.
#### The result

The result should contain this:

```bash
PORT    STATE SERVICE
631/tcp open  ipp
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
ipp | <span style="color:green">yes</span> | <span style="color:green">yes</span>
