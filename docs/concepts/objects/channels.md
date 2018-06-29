---
title: Channels
---

{% capture overview %}

This page describes the channel objects.

{% endcapture %}


{% capture body %}

## Description
Channels will send the incoming events through a filter to endpoints. The endpoints could be Slack, ELK stack, Splunk, file, console or your SIEM.

## Channels

Currently, the following channels are supported:

* filters
* splunk
* elasticsearch
* kafka
* raven
* console
* file

If necessary, custome channels can be build as well.

{% endcapture %}


{% include templates/concept.md %}
