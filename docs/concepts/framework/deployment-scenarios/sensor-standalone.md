---
title: Sensor Standalone
---

{% capture overview %}
This page describes the Sensor Standalone Deployment Scenarios.
{% endcapture %}

{% capture body %}

## Description

In this Deployment Scenario, a HoneyTrap Sensor is being installed within the network. Any connections being made to the HoneyTrap Sensor are considered malicious, and therefore logged and/or forwarded. Hereby the HoneyTrap Server is being configured to listen to incoming requests from the HoneyTrap Sensor.

## Use Cases

* Detection: using HoneyTrap in sensor mode enables detection of malicious activity.
* Insights: making it easy to collect payloads being used by attackers.

## Server Configuration

In this configuration, the system will be operating in sensor mode. Hereby, a `raw` listener is being used with a specific `interface`, specified under the `[listener]` part in the `config-sensor.toml` file. When running the `honeytrap` (server) application with this configuration file, it operates in sensor mode. An example of the `config-sensor.toml` file can be found [here](https://github.com/honeytrap/honeytrap-configs/blob/master/sensor-standalone/config-sensor.toml).

When using this architecture, it is possible to send the data to another server, or use a Docker Compose script (namely the `docker-compose-sensor.yml` file). An example of the Docker Compose script can be found [here](https://github.com/honeytrap/honeytrap-configs/blob/master/sensor-standalone/docker-compose-sensor.yml). This is all explained in the [Sensor Setup](/docs/setup/sensor/install-sensor/) pages.

{% endcapture %}


{% capture whatsnext %}
* Learn more about the [Agent - Server](/docs/concepts/framework/deployment-scenarios/agent-server/) Deployment Scenario.
* Learn more about the [Server Standalone](/docs/concepts/framework/deployment-scenarios/sensor-standalone/) Deployment Scenario.
* Learn more about the [HoneyTrap Sensor](/docs/concepts/framework/honeytrap-sensor/) here.
* Learn more about the [HoneyTrap Server](/docs/concepts/framework/honeytrap-server/) here.

{% endcapture %}

{% include templates/concept.md %}
