---
title: Installing HoneyTrap Server
---

{% capture overview %}

Playing with HoneyTrap is the easiest by starting the Docker image. The image is automatically being built by the continuous integration of our master branch.

{% endcapture %}


{% capture steps %}

## Install Docker and Docker Compose

The installation of HoneyTrap is relying on Docker and Docker Compose. Useful information for installing these applications can be found in this section. By following this guide, an Elastic Search, Kibana, and HoneyTrap Server container will be configured automatically. Optionally, one may log to an external (Elastic Search) source as well.

## Setup prerequisites 

In order to start the installation, the are some prerequisites you have to comply with. All necessary inforamtion can be found in this section.

## Docker Compose (HoneyTrap Server)

This step will explain the necessary steps you need to take in order to run the Docker Compose.

## Run HoneyTrap Agent

Finally, this section describes how the HoneyTrap Agent can be connected to the HoneyTrap Server.

{% endcapture %}


{% capture whatsnext %}

* Install [Docker and Docker Compose](/docs/setup/server/install-docker/).
* Setup the [prerequisites](/docs/setup/server/setup-prerequisites/).
* Run the [Docker Compose](/docs/setup/server/setup-honeytrap-server/) scripts.
* Start the [HoneyTrap Agent](/docs/setup/server/run-agent).

{% endcapture %}

{% include templates/new_task.md %}
