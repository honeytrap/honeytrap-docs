---
title: Run HoneyTrap Agent
---

{% capture overview %}

This page describes the way to start the HoneyTrap Server.

{% endcapture %}


{% capture steps %}

## Get connection key

When running the Docker Compose script from the previous step. Pay attention to the following information:

```
honeytrap_1      | HoneyTrap Agent Server public key: <key>
```

This key is necessary in order to start the HoneyTrap Agent. When starting the HoneyTrap Agent, this key will be used to make a connection.

## Running the HoneyTrap Agent

The Docker Compose configuration will use the Agent listener by default.

Now you can start the HoneyTrap Agent. Depending on the method of installation, by running the agent or starting the binary from the folder you compiled it to.

Running the binary from the directory in which the binary was compiled is as easy as:

```
./honeytrap-agent --remote-key {key} --server {ip}:1339
```

Running the application (i.e. after installing the homebrew package):

```
setcap 'cap_net_bind_service=+ep' honeytrap-agent --remote-key {key} --server {ip}:1339
```

Using the `cap_net_bind_service` capability allows HoneyTrap Agent to bind to lower ports, while running under a non-privileged user account.

This will start the HoneyTrap Agent, which will connect to the Honetyrap Server on **{ip}:1339**. The Agent will automatically reconnect when the connection with the server has been lost.

{% endcapture %}


{% capture whatsnext %}

* Setup a [HoneyTrap Sensor](/docs/setup/sensor/install-sensor/).

{% endcapture %}

{% include templates/task.md %}
