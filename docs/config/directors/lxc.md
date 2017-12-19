---
title: LXC
---

{% capture overview %}

{% endcapture %}

The LXC director will spawn a container per attacker. After a period of inactivity, the container will be frozen and eventually stopped. When the attacker returns, the original container will be assigned to his session. 

```
[director.lxc]
type="lxc"
template="sshtrap"
```

A service can be assigned to a director using:

```
[service.telnet01]
type="telnet"
port="tcp/23"
director="lxc"
```

Where director contains the name of the director.
