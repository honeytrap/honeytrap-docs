---
title: Forward
linktitle: Forward director
description: Configuration for Forward director
date: 2018-10-31
categories: [directors]
keywords: [directors]
menu:
  docs:
    parent: "directors"
    weight: 20
weight: 20
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## Description

The `forward` director will forward traffic to a remote host.



## Syntax

```bash
[director.forward]
type="forward"
```

## Arguments in config file

There is `1` argument in `forward` director:

 argument  | default setting | explanation
  ---  | --- | ---
`host` |  <span style="color:red">none</span> | Set the `ip address` of the remote host.



## Example

If you want to override the destination port, you can specify a port where all forwarded traffic will be directed to.

```bash
[director.forward]
type="forward"
host="8.8.8.8:1234"

[service.telnet]
type="telnet"
port="tcp/23"
director="forward"
```


## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
