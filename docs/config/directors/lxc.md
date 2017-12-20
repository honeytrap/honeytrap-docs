---
title: LXC
---

{% capture overview %}

{% endcapture %}

The LXC director will spawn a container per attacker. After a period of inactivity, the container will be frozen and eventually stopped. When the attacker returns, the original container will be assigned to his session. 

```
[director.lxc]
type="lxc"
template="honeytrap"
```

## LXC Template

First you need to create a lxc template container. This container will work as base image for following containers.

```
lxc-create -t download -n honeytrap -- --dist ubuntu --release trusty --arch amd64
```

A service can be assigned to a director using:

```
[service.telnet01]
type="telnet"
port="tcp/23"
director="lxc"
```

Where director contains the name of the director.
