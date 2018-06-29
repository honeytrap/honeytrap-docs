---
title: Listeners
---

{% capture overview %}

This page describes the listener objects.

{% endcapture %}


{% capture body %}

## Description
Listeners are listening to your network interfaces for incoming traffic. Using normal sockets, or raw networks you can assign services to specific ip addresses, ports or ranges.

## Listeners

Currently, the following listener types are available:

* socket
* canary 
* raw
* netstack
* agent

For some examples, please check out the [Configuration](/docs/config/listeners/socket/) pages.

{% endcapture %}


{% include templates/concept.md %}
