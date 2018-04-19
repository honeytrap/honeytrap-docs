---
title: Setup prerequisites
---

{% capture overview %}
The following steps are required in order to run the docker-compose setup.
{% endcapture %}

{% capture steps %}
## Create a network

```bash
docker network create honeytrap
```

This will use the config-docker.toml file in the current directory and forward ports 5900 and 8022 to the docker instance. If you want to store data into Elasticsearch and analyze with Kibana, it will be easiest to use the following docker-compose.yml.

## Create data infra

When working with the pre-built docker-compose setup, it's necessary to set up the following data infra.

```
mkdir -p /data/elasticsearch
chown -R 1000:1000 /data/elasticsearch
```

## Download configuration files

Issue the following commands to download the configuration files. The former is the configuration file for setting up the Honeytrap Server infrastructure, the latter is for configuring the Honeytrap Agent.

<!-- Original docs:
wget https://gist.githubusercontent.com/nl5887/631d65691b519fbf99e41228a7f3519f/raw/docker-compose-honeytrap.yml
wget https://gist.githubusercontent.com/nl5887/631d65691b519fbf99e41228a7f3519f/raw/config-docker.toml
-->

```
wget https://gist.githubusercontent.com/Coen-Schuijt/0600aca75dc99f6c2ce2c260ad00f0ab/raw/docker-compose-honeytrap.yml
wget https://gist.githubusercontent.com/Coen-Schuijt/0600aca75dc99f6c2ce2c260ad00f0ab/raw/config-docker.toml
```

If you are running Linux, you need to add the following line to **/etc/sysctl.conf**, and reload using `sysctl -p /etc/sysctl.conf`.

```
vm.max_map_count = 262144
```

{% endcapture %}

{% capture whatsnext %}
* The next step is to run the [docker-compose](/docs/setup/docker-compose/setup-honeytrap-server/) script.
{% endcapture %}

{% include templates/new_task.md %}
