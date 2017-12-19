---
title: Remote
---

{% capture overview %}

{% endcapture %}

The remote director will forward traffic to a remote host. 

```
[director.remote]
type="remote"
host="8.8.8.8"
```

A service can be assigned to a director using:

```
[service.telnet01]
type="telnet"
port="tcp/23"
director="remote"
```

Where director contains the name of the director.
