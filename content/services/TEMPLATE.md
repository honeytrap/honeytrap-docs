---
title: -title-
linktitle: title of service verbose
description: Configurations for -title- service 
date: 2018-01-02
publishdate: 2100-02-01
categories: [config_services]
menu:
  configuration:
    parent: "services"
    weight: 500
weight: 500
toc: true
---

**This is a template for the configuration of a service**
**Change the publishdate and the weight**
**Change the How to test line and replace all the -title- and <...>**
**Delete these 4 lines**

## Description 

Sed maximum est in amicitia parem esse inferiori. Saepe enim excellentiae quaedam sunt, qualis erat Scipionis.  
In nostro, ut ita dicam, grege. Numquam se ille Philo, numquam Rupilio, numquam Mummio 


Sed maximum est in amicitia parem esse inferiori.
Saepe enim excellentiae quaedam sunt, qualis erat Scipionis in nostro, ut ita dicam, grege. Numquam se ille Philo, numquam Rupilio, numquam Mummio 

## Syntax 

```bash
[service.<nickname_of_<...>>]
type="<...>"
```


## Arguments in config file

There are no arguments in <...> service.
VS
By default, <...> 

## Example

```bash
[service.<...>]
type="<...>"

[[port]]
port="<...>"
services=["<...>"]
```

## How to test

`curl -H “Content-Type: application/json” localhost:8545 -XPOST --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x1b4", true],"id":1}'`

## Availability
<br>

 | Linux | MacOS |
--- | --- | --- |
-title- | <span style="color:green"><...></span> | <span style="color:green"><...></span>



## Commands implemented

 | available |
 --- | --- |
<command_name> | <span style="color:green">yes</span> 
<command_name> | [<span style="text-decoration: underline; color:red">not yet</span>](/faq/<...>/#notification)


