---
title: Setup prerequisites
---

{% capture overview %}
The following steps are required in order to run the Docker Compose scripts.
{% endcapture %}

{% capture steps %}
## Create a network

```bash
docker network create honeytrap
```

## Create data infra

When working with the pre-built Docker Compose setup, it's necessary to set up the following data infra.

```
mkdir -p /data/elasticsearch
chown -R 1000:1000 /data/elasticsearch
```

Note: If you're running MacOS, make sure to share ```/data/elasticsearch``` in Docker preferences.

## Download configuration files

Issue the following commands to download the configuration files. The former is the configuration file for setting up the HoneyTrap Server infrastructure, the latter is for configuring the HoneyTrap Agent.

```
wget https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/agent-server/docker-compose-server.yml
wget https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/agent-server/config-server.toml
```

**Note:** If you are running Linux, you need to add the following line to **/etc/sysctl.conf**, and reload using `sysctl -p /etc/sysctl.conf`. <br/> ``` vm.max_map_count = 262144 ```
{: .note}

This will use the config-docker.toml file in the current directory and forward ports 5900 and 8022 to the Docker instance. If you want to store data into Elasticsearch and analyze with Kibana, it will be easiest to use the Docker Compose script.

{% endcapture %}

{% capture whatsnext %}
* The next step is to run the [Docker Compose](/docs/setup/server/setup-honeytrap-server/) script.
{% endcapture %}

{% include templates/task.md %}
