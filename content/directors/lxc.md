---
title: LXC Container
linktitle: LXC Container director
description: Configuration for LXC Container director
date: 2018-10-31
categories: [directors]
keywords: [directors]
menu:
  docs:
    parent: "directors"
    weight: 30
weight: 20
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

The `lxc` director will spawn a container per attacker. After a period of inactivity, the container will be frozen and eventually stopped. When the attacker returns, the original container will be assigned to his session.


## Syntax

```bash
[director.lxc]
type="lxc"
```

## Arguments in config file

There are `3` arguments in `lxc` director:

 argument  | default setting | explanation
  ---  | --- | ---
`freeze_every` |  <span style="color:green">15 **m**in</span> | The duration of inactivity after which a containter will be frozen.
`stop_every` |  <span style="color:green">30 **m**in</span> | The duration of inactivity after which a frozen container will be stopped.
`housekeeper_every` |  <span style="color:green">1 **m**in</span> | The frequency to check for inactivity.
**s** seconds  
**mcs** microseconds  
**ns** nanoseconds  
**ms** milliseconds  
**m** minutes  
**h** hours  


## Example

If you want to override the destination port, you can specify a port where all forwarded traffic will be directed to.

```bash
[director.lxc]
type="lxc"
host="8.8.8.8:1234"

[service.telnet]
type="telnet"
port="tcp/23"
director="lxc"
```


## Availability

 | Linux | MacOS |
--- | --- | --- |
lxc | <span style="color:green">yes</span> | <span style="color:red">no</span>
