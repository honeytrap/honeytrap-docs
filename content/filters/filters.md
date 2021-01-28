---
title: Filter Configuration
linktitle: Filter Configuration
description: Configurations for Filters
date: 2018-10-29
categories: [configuration]
menu:
  docs:
    parent: "filters"
    weight: 6
weight: 60
toc: true
---

## Description

The Filter configuration section in the configuration file defines which data is sent to the channels and which data is filtered.

## Syntax

```bash
[[filter]]
channel=["console"]
```

## How many?

There needs to be at least one filter because every channel needs to have a filter configuration.  

You can use as many filters as you want.


## Arguments in configuration file

There are `3` arguments in a `filter` configuration:

 argument  | default setting | explanation
  ---  | --- | ---
`channel` |  <span style="color:red">none</span> | Set the list of `channels`.
`services` | <span style="color:red">none</span> | Set the list `services`.
`categories` | <span style="color:red">none</span> | Set the list of  `categories`.

## Example

Let's say we use 2 channels in our configuration file:

+ the[ channel ](/channels/file)`file` as a backup for everything.
+ the[ channel ](/channels/console)`console` to display only alerts about some services.

We'll use 2 filters:

```bash
[[filter]]
channel=["file"]

[[filter]]
channel=["console"]
services=["telnet"]
```

When you don't specify any `services`, nor `categories` in a filter,  
*- as in the first one applied on the channel `file` -,*  
**every** event will be sent to the channel.  

> Here, every event will be saved in a file.   

However, if you specify some fields `services` or `categories`,  
*-as in the second one applied on the channel `console`-,*  
**only** the relevant events will be logged.  

> Here, only the events from the service `telnet` will be logged into the console.  
