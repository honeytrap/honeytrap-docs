---
title: Elasticsearch
linktitle: Elastic search
description: Configuration for Elasticsearch channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 40
weight: 40
toc: true
---

## What is Elasticsearch?

Elasticsearch is a search engine based Lucene library which provides distributed multitenent-capable full-text search engine with webinterface and scheme-free JSON documents.

## Description

The Elasticsearch channel will log all events to an Elasticsearch API.

## Syntax

```bash
[channel.<you_choose>]
type="elasticsearch"
url="elasticsearch_server/index"
```

## Arguments in configuration file

There are `5` arguments in Elasticsearch channel:

 argument  | default setting | explanation | required
  ---  | --- | --- | ---
`url` |  <span style="color:red">no</span> | Set the `url` and `index` of your Elasticsearch Server. | <span style="color:green">yes</span>
`sniff` | <span style="color:red">no</span> | `true` defines that the client should find all nodes. | <span style="color:red">no</span>
`insecure` | <span style="color:red">no</span> | `true` will disable certificate validation. | <span style="color:red">no</span>
`username` | <span style="color:red">no</span> | Set the `username` used for authentication. | <span style="color:red">no</span>
`password` | <span style="color:red">no</span> | Set the `password` used for authentication. | <span style="color:red">no</span>


## Example

```bash
[channel.elasticsearch01]
type="elasticsearch"
url="http://127.0.0.1:9200/honeytrap"
sniff=false
insecure=true
```


## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>
