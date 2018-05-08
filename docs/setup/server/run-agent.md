---
title: Run Honeytrap Agent
---

{% capture overview %}

This page describes the way to start the Honeytrap Server.

{% endcapture %}


{% capture steps %}

## Get connection key

When running the Docker Compose script from the previous step. Pay attention to the following information:

```
honeytrap_1      | Honeytrap Agent Server public key: <key>
```

This key is necessary in order to start the Honeytrap Agent. When starting the Honeytrap Agent, this key will be used to make a connection.

## Running the Honeytrap Agent

The Docker Compose configuration will use the Agent listener by default.

Now you can start the Honeytrap Agent. Depending on the method of installation, by running the agent or starting the binary from the folder you compiled it to.

Running the binary from the directory in which the binary was compiled is as easy as:

```
./honeytrap-agent --remote-key {key} --server {ip}:1339
```

Running the application (i.e. after installing the homebrew package):

```
sudo honeytrap-agent --remote-key {key} --server {ip}:1339
```

{% endcapture %}


{% capture whatsnext %}

* Setup a [Honeytrap Sensor](/docs/setup/sensor/install-sensor/).

{% endcapture %}

{% include templates/new_task.md %}
