---
title: Setup
---

{% capture overview %}

This section provides instructions for installing and configuring Honeytrap.

Depending on the [chosen architecture](/docs/concepts/framework/architecture/), the installation procedure consists of one or more of the following three parts:

{% endcapture %}

{% capture steps %}

## Installing the Honeytrap Agent

The Honeytrap agent can be installed in the following ways:

* By installing a pre-built package, currently available for:

	* [Mac OS](/docs/setup/packages/mac-os/)

* By installating the Honeytrap Agent [from source](/docs/setup/go/install-go/).

## Installing Honeytrap as a Sensor

`<steps here>`

## Installing the Honeytrap Server

The easiest way to install Honeytrap Server is by running the [docker-compose](/docs/setup/docker-compose/landing/). This wil set up the necessary infrastructure, including:

* Elastic Search: In order to, log and index all data sent to the Honeytrap Server.
* Kibana: In order to visualize the data stored in Elastic Search.
* Honeytrap (Server): For accepting requests forwarded by the Honeytrap Agent.

{% endcapture %}

{% include templates/new_task.md %}
