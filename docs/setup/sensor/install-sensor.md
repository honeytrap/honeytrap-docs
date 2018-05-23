---
title: Installing HoneyTrap Sensor
---

{% capture overview %}
This page describes the steps to take in order to install the HoneyTrap Sensor:
{% endcapture %}


{% capture steps %}

The installation procedure is very similar to the one for installing HoneyTrap Agent and HoneyTrap Server. 
Basicly, when running HoneyTrap in Sensor Mode, all requests are sent to the ouput channel directly.

Since it is not possible to run HoneyTrap Sensor in a Docker container, we suggest installing it on a Virtual Machine. Additionally, Docker and Docker Compose may be installed in order to run Elastic Search and Kibana containers. This makes it possible to index and visualize the data locally.

## Install Docker and Docker Compose

HoneyTrap Sensor can make use of Docker and Docker Compose. Useful information for installing these applications can be found in this section.
HoneyTrap is not able to run within a Docker container, since it is based on a custom network stack. Nevertheless, it is still usefull to install Docker and Docker Compose if you want to log and analyze the generated data locally.
By following this guide, an Elastic Search and Kibana container will be configured. Optionally, one may log to an external (Elastic Search) source or to console as well.

## Setup prerequisites

In order to start the installation, the are some prerequisites you have to comply with. All necessary inforamtion can be found in this section.

## Configuring the firewall

In this step the firewall will be configured in order to accept all requests. This is necessary in order to work with the custom TCP stack.

## Docker Compose (HoneyTrap Sensor)

This step will explain the necessary steps you need to take in order to run the Docker Compose.

## Run HoneyTrap Sensor

The last step consists of starting the HoneyTrap Sensor to actively listen to requests on the network.


{% endcapture %}


{% capture whatsnext %}

* Install [Docker and Docker Compose](/docs/setup/sensor/install-docker/).
* Setup the [prerequisites](/docs/setup/sensor/setup-prerequisites/).
* Configure the [firewall](/docs/setup/sensor/config-firewall/).
* Run the [Docker Compose](/docs/setup/sensor/setup-honeytrap-sensor/) scripts.
* Run the [HoneyTrap Sensor](/docs/setup/sensor/run-sensor/).

{% endcapture %}

{% include templates/task.md %}
