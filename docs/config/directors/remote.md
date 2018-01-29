---
title: Forward
---

{% capture overview %}

{% endcapture %}

The forward director will forward traffic to a remote host. 

```
[director.forward]
type="forward"
host="8.8.8.8"
```

If you want to override the destination port, you can use the following config, where all forwarded traffic will be directed to port 1234.

```
[director.forward]
type="forward"
host="8.8.8.8:1234"
```

A service can be assigned to a director using:

```
[service.telnet01]
type="telnet"
port="tcp/23"
director="forward"
```

Where director contains the name of the director.
