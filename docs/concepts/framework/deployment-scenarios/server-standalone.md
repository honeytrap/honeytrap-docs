---
title: Server Standalone
---

{% capture overview %}
This page describes the Server Standalone Deplyment Scenario.
{% endcapture %}


{% capture body %}

## Description

In this scenario malicious traffic is directly being forwarded to the HoneyTrap Server. There is no need for external sensors, such as HoneyTrap Agent or HoneyTrap Sensor.

## Use Cases

* Single Deployment: for deployment scenarios where no client-server architecture is necessary.

## Server Configuration

In this configuration the HoneyTrap Server is being configured for using a `socket` listener specified under the `[listener]` part in the `config-server-standalone.toml` file. Connections on the ports specified in this file are being processed directly, or forwarded to virtual/physical machines or containers. An example of the `config-server-standalone.toml` file can be found [here](https://github.com/honeytrap/honeytrap-configs/blob/master/server-standalone/config-server-standalone.toml).

{% endcapture %}

{% capture whatsnext %}
* Learn more about the [Agent - Server](/docs/concepts/framework/deployment-scenarios/agent-server/) Deployment Scenario.
* Learn more about the [Sensor Standalone](/docs/concepts/framework/deployment-scenarios/sensor-standalone/) Deployment Scenario.
* Learn more about the [HoneyTrap Server](/docs/concepts/framework/honeytrap-server/) here. 

{% endcapture %}

{% include templates/concept.md %}
