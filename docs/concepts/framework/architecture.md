---
title: Architectures
---

{% capture overview %}
This page gives a basic overview of the Honeytrap Architecture.
{% endcapture %}

The following picture gives an overview of the Honeytrap framework.


<img src="/images/architecture/overview.png">

## Architectures

There are several ways of implementing the Honeytrap framework. The most common architectures are as follows:

|-
| architecture                                               | Explanation                                                                             |
|:-:|:-
| [![Agent - Server](/images/architecture/agent_server.png)](/docs/concepts/architecture/honeytrap-agent/)  | Follow [this guide](/docs/setup/go/install-agent/) to setup the Honeytrap Agent.        |
|=
| [![Sensor - Server](/images/architecture/sensor_server.png)](/docs/concepts/architecture/honeytrap-server/) | Follow [this guide](/docs/setup/sensor/install-sensor/) to setuop the Honeytrap Sensor. |
|=
| [![Sensor (standalone)](/images/architecture/sensor.png)](/docs/concepts/architecture/honeytrap-sensor/)    | Follow [this guide](/docs/setup/docker-compose/landing/) to setup the Honeytrap Server. |
|=

## Main concepts

The honeytrap mainly consists of three objects:

|-
| Object                                               | Explanation                                                                             |
|:-:|:-
| ![Honeytrap Agent](/images/architecture/agent.png)   | Follow [this guide](/docs/setup/go/install-agent/) to setup the Honeytrap Agent.        |
|=
| ![Honeytrap Sensor](/images/architecture/sensor.png) | Follow [this guide](/docs/setup/sensor/install-sensor/) to setuop the Honeytrap Sensor. |
|=
| ![Honeytrap Server](/images/architecture/server.png) | Follow [this guide](/docs/setup/docker-compose/landing/) to setup the Honeytrap Server. |
|=
