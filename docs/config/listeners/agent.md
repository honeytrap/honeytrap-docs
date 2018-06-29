---
title: Agent
---

{% capture overview %}
This page will give an overview of the Agent listener
{% endcapture %}

This is the default listener for the Honeytrap Server. When this listener is used, the HoneyTrap Server is actively listening to incoming requests from HoneyTrap Agents, based on one or more specific configured services.

```
[listener]
type="agent"

[[port]]
port="tcp/22"
services=["ssh-simulator"]

[service.ssh-simulator]
type="ssh-simulator"
credentials=["root:root", "root:password"]
```
