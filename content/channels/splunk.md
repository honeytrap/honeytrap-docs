---
title: Splunk
linktitle: Splunk
description: Configuration for Splunk channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 120
weight: 120
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## What is Splunk?

Software for searching monitoring and analyzing machine-generated big data. Splunk can capture index and correlate real-time data in a searchable repository.

## Description

The Splunk channel will log all events to a HTTP Event Collector (HEC).

## Syntax

```bash
[channel.<you_choose>]
type="splunk"
```

## Arguments in configuration file

There are `3` arguments in Splunk channel:

 argument  | default setting | explanation
  ---  | --- | ---
`endpoints` |  <span style="color:red">none</span> | Set your serverURLs.
`token` | <span style="color:red">none</span> | Set your Splunk `token`.
`verify` | <span style="color:red">none</span> | `false` will disable certificate validation.



## Example

```bash
[channel.splunk01]
type="splunk"
endpoints=["https://127.0.0.1:8088"]
token="{splunk_token}"
verify=false
```

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
