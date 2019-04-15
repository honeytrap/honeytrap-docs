---
title: Agent
linktitle: Agent
description: Configuration for Agent listener
date: 2018-10-31
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 20
weight: 20
toc: true
---
<mark>// TODO This documentation is still work in progress.</mark>

## Description

The`agent` listener allows the usage of agents as "providers" of traffic.

When starting HoneyTrap with an Agent listener, You will have displayed a random `HoneyTrap Agent Server public Key`, such as:
```bash
 Honeytrap Agent Server public key: 12a9ce17adc2ad1553040b19c33575bbef9fe7adedc6d14a669251a8f7f7a256
```
You will have to enter this key in the configuration file of each of your agents.


## Syntax

```bash
[listener]
type="agent"
```

## How many?

There needs to be one listener and there **can only be one**.  

However, once you have started your HoneyTrap central server, you can deploy as many agents as you want.

## Arguments in configuration file

There is `1` argument in Agent listener:

 argument  | default setting | explanation
  ---  | --- | ---
`listen` |  <span style="color:green">":1337"</span> | Set the `port` on which to listen the agents.

## Example

```bash
[listener]
type="agent"
listen=":1337"
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
agent | <span style="color:green">yes</span> | <span style="color:green">yes</span>
