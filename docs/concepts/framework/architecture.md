---
title: Architecture
---

{% capture overview %}
This page gives a basic overview of the HoneyTrap Architecture.
{% endcapture %}

The following picture gives an overview of the HoneyTrap framework.

<img src="/images/architecture/overview.png">


## Main system types

The honeytrap mainly consists of three system types:

|-
| Object | Explanation
|:-:|:-
| [![HoneyTrap Agent](/images/architecture/agent.png)](/docs/concepts/framework/honeytrap-agent/) | The **HoneyTrap Agent** is a small server that forwards all incoming traffic to the HoneyTrap Server. More information can be found at the [HoneyTrap Agent](/docs/concepts/framework/honeytrap-agent/) page. Follow [this guide](/docs/setup/agent/landing/) to install the HoneyTrap Agent.
| [![HoneyTrap Server](/images/architecture/server.png)](/docs/concepts/framework/honeytrap-server/) | The **HoneyTrap Server** accepts incoming requests from HoneyTrap Agents and HoneyTrap Sensors. This is the central management server in which the simulated environment can be controlled and configured, utilizing various listener types, services and output channels. More information can be found at the [HoneyTrap Server](/docs/concepts/framework/honeytrap-server/) page. Follow [this guide](/docs/setup/server/install-server/) to setup the HoneyTrap Server.
| [![HoneyTrap Sensor](/images/architecture/sensor.png)](/docs/concepts/framework/honeytrap-sensor/) | The **HoneyTrap Sensor** is a system that accepts traffic to all ports. This system is mainly used for detecting anomalous traffic. More information can be found at the [HoneyTrap Sensor](/docs/concepts/framework/honeytrap-sensor/) page. Follow [this guide](/docs/setup/sensor/install-sensor/) to setuop the HoneyTrap Sensor.
|=

## Deployment Scenarios

There are several ways of implementing the HoneyTrap framework. The most common Deployment Scenarios are as follows:

|-
| Deployment Scenario | Explanation
|:-:|:-
| [![Agent - Server](/images/architecture/agent_server.png)](/docs/concepts/framework/architecture/agent-server/) |  This Deployment Scenarios combines the HoneyTrap Agent with the HoneyTrap Server. Incoming requests to specific services on the HoneyTrap Agent are being forwarded, and handled by the HoneyTrap Server. More information regarding this architecture can be found [here](/docs/concepts/framework/deployment-scenarios/agent-server/).
| [![Sensor Standalone](/images/architecture/sensor_standalone.png)](/docs/concepts/framework/architecture/sensor-standalone/) |  In this Deployment Scenario all connections to the HoneyTrap Sensor are being forwarded to the HoneyTrap Server. More information regarding this architecture can be found [here](/docs/concepts/framework/deployment-scenarios/sensor-standalone/).
| [![Server Standalone](/images/architecture/server_standalone.png)](/docs/concepts/framework/architecture/server-standalone/) |  Here, the HoneyTrap Server is configured to accept incoming requests directly. For example from traffic being routed by Hodor. More information regarding this architecture can be found [here](/docs/concepts/framework/deployment-scenarios/server-standalone/).
|=
