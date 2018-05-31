---
title: Agent - Server
---

{% capture overview %}
This page describes the Agent - Server Sub-Architecture.
{% endcapture %}

{% capture body %}

## Description

In this Sub-Architecture, one or more HoneyTrap Agents are listening to incoming requests. Connections are then forwarded to the HoneyTrap Server. The HoneyTrap Agent is configured with one or more services. While actively "listening" to incoming requests to that service, once a connection is being made, the attacker is being forwarded to the HoneyTrap Server over an encrypted tunnel.

## Use Cases

* Easy deployment: you can deploy hundreds of HoneyTrap Agents connecting to the same HoneyTrap Server.
* Security: the Honeytrap Server can be located outside the network.

## Agent Configuration

The HoneyTrap Agent has to be configured such that it forwards incoming requests to the HoneyTrap Server. It is necessary to configure one or more services, and add them to the `config-agent.toml` file. A complete overview of the services can be found add the [Configuration](/docs/config/services/ssh/authentication/) page.

## Server Configuration

In order to make the HoneyTrap Server work with the Agent, an Agent [Listener](/docs/concepts/objects/listeners/) has to be configured. This makes sure the HoneyTrap Server is actively listening to requests forwarded by agents.

{% endcapture %}

{% capture whatsnext %}
* Learn more about the [Sensor - Server](/docs/concepts/framework/sub-architecture/sensor-server/) Architecture.
* Learn more about the [Server Standalone](/docs/concepts/framework/sub-architecture/server-standalone/) Architecture.
* Learn more about [The HoneyTrap Agent](/docs/concepts/framework/honeytrap-agent/) here.
* Learn more about [The HoneyTrap Server](/docs/concepts/framework/honeytrap-server/) here.

{% endcapture %}

{% include templates/concept.md %}
