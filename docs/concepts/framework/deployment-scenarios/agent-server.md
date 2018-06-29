---
title: Agent - Server
---

{% capture overview %}
This page describes the Agent - Server Deployment Scenario.
{% endcapture %}

{% capture body %}

## Description

In this Deployment Scenario, one or more HoneyTrap Agents are listening to incoming requests. Connections are then forwarded to the HoneyTrap Server. The HoneyTrap Agent is configured with one or more services. While actively "listening" to incoming requests to that service, once a connection is being made, the attacker is being forwarded to the HoneyTrap Server over an encrypted tunnel.

## Use Cases

* Easy deployment: you can deploy hundreds of HoneyTrap Agents connecting to the same HoneyTrap Server.
* Security: the Honeytrap Server can be located outside the network.

## Agent Configuration

The HoneyTrap Agent has to be configured such that it forwards incoming requests to the HoneyTrap Server. The configuration file for the HoneyTrap Agent is stored in `/usr/local/etc/honeytrap-agent.toml`. Here the `public key`, as well as the `ip` and `port`, can be set. Optionally, a configuration file may be specified when running the agent with the `-f` parameter.

## Server Configuration

In order to make the HoneyTrap Server work with the Agent, an Agent [Listener](/docs/concepts/objects/listeners/) has to be configured. This makes sure the HoneyTrap Server is actively listening to requests being forwarded by agents. Basically, this is accomplished by specifying the `type="agent"` parameter in the `[listener]` part of the `config-server.toml` file. In this file, the services are specified and configured as well. The honeytrap-server configuration can be retrieved from [this location](https://github.com/honeytrap/honeytrap-configs/blob/master/agent-server/config-server.toml). A complete overview of the services can be found add the [Configuration](/docs/config/services/ssh/authentication/) page.

{% endcapture %}

{% capture whatsnext %}
* Learn more about the [Sensor Standalone](/docs/concepts/framework/deployment-scenarios/sensor-standalone/) Scenario.
* Learn more about the [Server Standalone](/docs/concepts/framework/deployment-scenarios/server-standalone/) Scenario.
* Learn more about the [HoneyTrap Agent](/docs/concepts/framework/honeytrap-agent/) here.
* Learn more about the [HoneyTrap Server](/docs/concepts/framework/honeytrap-server/) here.

{% endcapture %}

{% include templates/concept.md %}
