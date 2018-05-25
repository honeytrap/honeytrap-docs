---
title: Agent - Server
---

{% capture overview %}
This page describes the Agent - Server overview.
{% endcapture %}

{% capture body %}

## Description

In this Sub-Architecture, one or more HoneyTrap Agents are listening to incoming requests. Connections are then forwarded to the HoneyTrap Server.

The HoneyTrap Agent is configured with one or more services. While actively "listening" to incoming requests to that service, once a connection is being made, the attacker is being forwarded to the HoneyTrap Server over an encrypted tunnel.

## Use Cases

* Easy deployment: you can deploy hundreds of HoneyTrap Agents connecting to the same HoneyTrap Server.
* Security: the Honeytrap Server can be located outside the network.

## Agent Configuration

The HoneyTrap Agent has to be configured such that it forwards incoming requests to the HoneyTrap Server. It is necessary to configure one or more services, and add them to the `config-agent.toml` file. A complete overview of the services can be found add the [Configuration](/docs/config/services/ssh/authentication/) page.

## Server Configuration

In order to make the HoneyTrap Server work with the Agent, an Agent [Listener](/docs/concepts/objects/listeners/) has to be configured. This makes sure the HoneyTrap Server is actively listening to requests forwarded by agents.

{% endcapture %}

<!--
{% capture whatsnext %}

{% endcapture %}
-->

{% include templates/concept.md %}
