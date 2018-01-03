---
title: VNC Service
---

{% capture overview %}

{% endcapture %}

The VNC service will simulate a vnc environment. It will capture the authentication and connection information.

#### Configuration

```
[service.vnc]
type="vnc"
port="tcp/5900"
image="./data/desktop.png"
server-name="win2003"
```
