---
title: Setup
---

{% capture overview %}

This section provides instructions for installing and configuring HoneyTrap.

Depending on the [chosen architecture](/docs/concepts/framework/architecture/), the installation procedure consists of one or more of the following three parts:

{% endcapture %}


{% capture steps %}

## Installing the HoneyTrap Agent

The HoneyTrap agent can be installed in the following ways:

* By installing a pre-built package, currently available for:

	* [Mac OS](/docs/setup/packages/mac-os/)

* By installating the HoneyTrap Agent [from source](/docs/setup/agent/install-go/).

## Installing the HoneyTrap Server

The easiest way to install HoneyTrap Server is by running the [docker-compose](/docs/setup/server/install-server/). This wil set up the necessary infrastructure, including:

* Elastic Search: In order to, log and index all data sent to the HoneyTrap Server.
* Kibana: In order to visualize the data stored in Elastic Search.
* HoneyTrap (Server): For accepting requests forwarded by the HoneyTrap Agent.

## Installing HoneyTrap as a Sensor

The easiest way to install HoneyTrap Sensor is by running the [docker-compose](/docs/setup/sensor/install-sensor/). This will set op the necessary infrastructure, including:

* Elastic Search: In order to, log and index all data sent to the HoneyTrap Server.
* Kibana: In order to visualize the data stored in Elastic Search.

{% endcapture %}


{% capture whatsnext %}

* [Install HoneyTrap Agent](/docs/setup/agent/landing/)
* [Install HoneyTrap Server](/docs/setup/server/install-server/)
* [Install HoneyTrap Sensor](/docs/setup/sensor/install-sensor/)

{% endcapture %}

{% include templates/task.md %}
