---
title: Server Standalone
---

{% capture overview %}
This page describes the Server Standalone Sub-Architecture.
{% endcapture %}


{% capture body %}

## Description

In this scenario malicious traffic is directly being forwarded to the HoneyTrap Server. There is no need for external sensors, such as HoneyTrap Agent or HoneyTrap Sensor.

## Use Cases

* Forwards: it is possible to forward specific traffic directly.

## Server Configuration

The HoneyTrap Server is being configured with a listener to accept all requests directly. Incomming requests are then forwarded to specific services, and optionally forwarded to external containers/machines.

{% endcapture %}

{% capture whatsnext %}
* Learn more about the [Agent - Server](/docs/concepts/framework/sub-architecture/agent-server/) Architecture.
* Learn more about the [Sensor - Server](/docs/concepts/framework/sub-architecture/sensor-server/) Architecture.
* Learn more about [The HoneyTrap Server](/docs/concepts/framework/honeytrap-server/) here. 

{% endcapture %}

{% include templates/concept.md %}
