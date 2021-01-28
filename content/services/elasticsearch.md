---
title: Elasticsearch
linktitle: Elasticsearch
description: Configurations for Elasticsearch service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 90
weight: 80
toc: true
---
## What is Elasticsearch

`Elasticsearch` is a search engine based on the Lucene library.

## Description

`Elasticsearch` service will log every Elasticsearch request.

## Syntax

```bash
[service.<nickname_of_elasticsearchService>]
type="elasticsearch"
```


## Arguments in config file

There are `3` arguments in `Elasticsearch` service:

 argument  | default setting | explanation
  ---  | --- | ---
`name` |  <span style="color:green">AW2LChf</span> | The `node name`
`cluster_name` | <span style="color:green">elasticsearch</span> | The `cluster name`
`cluster_uuid` | <span style="color:green">ay20oRi4SHmlOPAyTrPh6A</span> | The `cluster UUID`




## Example

```bash
[service.elastico]
type="elasticsearch"
name="AW2LChf"
cluster_name="elasticsearch"
cluster_uuid="ay20oRi4SHmlOPAyTrPh6A"

[[port]]
port="tcp/9200"
services=["elastico"]
```

## How to test

```bash
curl [IP_ADDRESS]:9200
```

#### The test explained
With `curl` we make a request to the [IP_ADDRESS]:[SPECIFIED_PORT]. The response `curl` returns is the response you would expect from a `Elasticsearch` cluster.

#### The result
The `curl` result should look something like this:
```bash
{"cluster_name":"elasticsearch","cluster_uuid":"ay20oRi4SHmlOPAyTrPh6A","name":"AW2LChf","tagline":"You Know, for Search","version":{"build_date":"2017-05-29T16:05:51.443Z","build_hash":"2cfe0df","build_snapshot":false,"lucene_version":"6.5.1","number":"5.4.1"}}
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
elasticsearch | <span style="color:green">yes</span> | <span style="color:green">yes</span>



## Commands implemented

 | available |
 --- | --- |
/ | <span style="color:green">yes</span>
