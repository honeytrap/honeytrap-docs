---
title: Channels
linktitle: About Channels
description: Delivery of events.
date: 2018-06-01
layout: single
keywords: [concepts]
menu:
  docs:
    parent: "channels"
    weight: 5
weight: 50
toc: true
---
## Description

Channels are responsible for the delivery of events.

## Syntax

```bash
[channel.<you_choose_the_nickname_of_the_channel>]
type="<official_name_of_the_channel>"
# .. arguments

[[filter]]
type=<string>  #optional
channel=["<nickname_of_the_channel>"]
```

### How many?

You can define as many channels as you want.

### Arguments

Each channel has its own arguments.

## [[filter]]

The filter selects the data that is send to a previously defined channel.

 There are three types of data that can be collected with the HoneyTrap framework:

 *  `events` generated events triggered by connections to the honeypot  
 *  `alerts` output of canary  
 *  `logging` framework system logging

```bash
[[filter]]
type=<string>  #optional
channel=["<nickname_of_the_channel>"]
```

### Example

```bash
[channel.console01]
type="console"

[[filter]]
channel=["console"]
```

## Channels available

 | Linux | MacOS |
--- | --- | --- |
[ <span style="text-decoration: underline">console</span>](/channels/console) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">dshield</span>](/channels/dshield) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">elasticsearch</span>](/channels/elasticsearch) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">file</span>](/channels/file) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">kafka</span>](/channels/kafka) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">marija</span>](/channels/marija) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">pulsar</span>](/channels/pulsar) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">rabbitmq</span>](/channels/rabbitmq) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">raven</span>](/channels/raven) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">slack</span>](/channels/slack) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[ <span style="text-decoration: underline">splunk</span>](/channels/splunk) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
