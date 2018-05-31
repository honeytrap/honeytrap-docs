---
title: Run HoneyTrap Sensor
---

{% capture overview %}

This page describes the way to start HoneyTrap in Sensor Mode.

{% endcapture %}


{% capture steps %}

## Create Symbolic link

In order to start the HoneyTrap application, an easy way is to point to the binary by executing the following command.

```
$ ln -s /opt/honeytrap/bin/honeytrap /usr/local/bin/honeytrap
```

This allows us to run the HoneyTrap application from any directory on the system.

<!--
## Define Elastich Search node

In order to run the current configuration, it is necessary to define the (local) Elastic Search node in the `/etc/hosts/` file. This can be done by executing the following command.

```
$ echo "127.0.0.1 elasticsearch" >> /etc/hosts
```
-->

## Start HoneyTrap Sensor

Execute the following command in order to start the HoneyTrap Sensor with the given conifguration.

```
$ honeytrap -c /opt/honeytrap/src/github.com/honeytrap/honeytrap/config-sensor.toml
```

{% endcapture %}

{% include templates/task.md %}
