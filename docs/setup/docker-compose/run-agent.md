---
title: Run Honeytrap Agent
---

{% capture overview %}

This page describes the way to start the Honeytrap Server.

{% endcapture %}


{% capture steps %}

## Running the Honeytrap Agent

The docker compose configuration will use the Agent listener by default.

Now you can start the Honeytrap Agent. Depending on the method of installation:

1) By running the binary from the directory in which the binary was compiled:

```
./honeytrap-agent --remote-key {key} --server {ip}:1337
```

2) Or by running the application (i.e. after installing the homebrew package):

```
sudo honeytrap-agent --remote-key {key} --server {ip}:1337
```

{% endcapture %}


{% capture whatsnext %}

* Setup a [Honeytrap Sensor](/docs/setup/sensor/install-sensor/)
* Install Honeytrap Agent on a [Raspberry Pi](/docs/setup/appliance/landing/)

{% endcapture %}

{% include templates/new_task.md %}
