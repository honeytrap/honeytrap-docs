---
title: Configuring the firewall
---

{% capture overview %}
This page describes the necessary steps you need to take in order to make the Honeytrap Sensor function as expected.
{% endcapture %}


{% capture steps %}

## Disable RST replies

Make sure you’ll disable the RST replies of Linux. Otherwise both Linux and Honeytrap will reply to the packet.

```
iptables -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
iptables -I OUTPUT -p icmp --icmp-type destination-unreachable -j DROP
```

{% endcapture %}


{% capture whatsnext %}
* The next step is to [Docker Compose](/docs/setup/sensor/setup-honeytrap-sensor/) script.
{% endcapture %}

{% include templates/new_task.md %}
