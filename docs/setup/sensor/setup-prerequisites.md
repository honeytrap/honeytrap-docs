---
title: Setup prerequisites
---

{% capture overview %}
The following steps are required in order to run the Docker Compose setup.
{% endcapture %}

{% capture steps %}

## Create a network

If you didn't create a Docker network for HoneyTrap just yet, create one now by executing the following command.

```bash
docker network create honeytrap
```

## Create data infra

When working with the pre-built Docker Compose setup, it's necessary to set up the following data infra.

```
mkdir -p /data/elasticsearch
chown -R 1000:1000 /data/elasticsearch/
```

**Note:** If you're running MacOS, make sure to share ```/data/elasticsearch``` in Docker preferences.
{: .note}

## Compile HoneyTrap

If Go is not installed yet, you can do so by following [this guide](/docs/setup/agent/install-go/).

In order to install the HoneyTrap application, execute the following commands.

```
$ mkdir /opt/honeytrap
$ cd /opt/honeytrap/

$ export GOPATH=/opt/honeytrap
$ export PATH=$PATH:/usr/local/go/bin/

$ go get github.com/honeytrap/honeytrap/
$ cd src/github.com/honeytrap/honeytrap/
```

## Download configuration files

Issue the following commands to download the configuration files. The former is the configuration file for setting up the HoneyTrap Sensor infrastructure, the latter is for configuring the HoneyTrap Sensor.

```
wget https://gist.githubusercontent.com/Coen-Schuijt/94a58b942e3d44c2221c1de2b7dfc543/raw/docker-compose-sensor.yml
wget https://gist.githubusercontent.com/Coen-Schuijt/94a58b942e3d44c2221c1de2b7dfc543/raw/config-sensor.toml
```

**Note:** The interface name in the config.toml file has to be adjusted to the interface you want the HoneyTrap Sensor to listen on. The specific interface name may vary, based on the host operating system being used.
{: .note}


**Note:** If you are running Linux, you need to add the following line to **/etc/sysctl.conf**, and reload using `sysctl -p /etc/sysctl.conf`:
```
vm.max_map_count = 262144
```
{: .note}

This will use the config-sensor.toml file in the current directory. This will use the custom network stack to capture the first packet after the handshake has been completed. If you want to store data into Elasticsearch and analyze with Kibana, it will be easiest to use the Docker Compose script.

{% endcapture %}

{% capture whatsnext %}
* Don't forget to apply the correct [firewall rules](/docs/setup/sensor/config-firewall/).
{% endcapture %}

{% include templates/task.md %}
