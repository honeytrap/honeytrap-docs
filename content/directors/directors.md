---
title: Directors
linktitle: About Directors
description: Where to proxy traffic to.
date: 2018-06-01
keywords: [concepts]
menu:
  docs:
    parent: "directors"
    weight: 6
weight: 40
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>


## Description

Directors define where to proxy traffic to. This can be a remote host or a container.



## Syntax

```bash
[director.<you_choose_the_nickname_of_the_host/container>]
type="<official_name_of_the_director>"
# .. arguments

[services.<your_service>]
director="<nickname_of_the_host/container>"

```


## How many?

Directors are not mandatory.  
There **can only be one director for each service**.



## Arguments

Depending on the director you chose, you may have to include arguments.


## Example

[forward](/directors/forward)

```bash
[service.ssh-proxy]
type="ssh-proxy"
port="tcp/2222"
director="cowrie-ssh"
credentials=["*"]

[director.cowrie-ssh]
type="forward"
host="cowrie:2222"
```

## Directors available
<br>

 | Linux | MacOS |
--- | --- | --- |
[ <span style="text-decoration: underline">forward</span>](/directors/forward) | <span style="color:green">yes</span> | <span style="color:green">yes</span>
[<span style="text-decoration: underline">LXC Container</span>](/directors/lxc) | <span style="color:green">yes</span> | <span style="color:red">no</span>
