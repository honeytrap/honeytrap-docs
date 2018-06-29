---
title: Directors
---

{% capture overview %}

This page describes the directors objects.

{% endcapture %}

{% capture body %}

## Description
The director directs traffic to a specific endpoint. This could be a remote host or a lxc container per attacker.

## Directors

Currently, the following directors are being supported:

* qemu
* lxc
* remote

For examples, please refer to the [Configuration](/docs/config/directors/lxc/) page, or check the `config.toml.sample` [file](https://github.com/honeytrap/honeytrap/blob/master/config.toml.sample) at the Github repository.

{% endcapture %}


{% include templates/concept.md %}
