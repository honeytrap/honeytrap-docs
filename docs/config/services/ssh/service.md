---
title: SSH Service
---

{% capture overview %}

{% endcapture %}

The SSH service will simulate a ssh shell.

#### Configuration

```
[service.ssh-simulator]
type="ssh-simulator"
port="tcp/22"
credentials=["root:root", "root:password"]
```
