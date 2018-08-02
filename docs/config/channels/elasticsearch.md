---
title: Elasticsearch
---

{% capture overview %}
{% endcapture %}

```
[channel.elasticsearch]
type="elasticsearch"
url="http://127.0.0.1:9200/honeytrap"
username="{username}" # optional
password="{password}" # optional

[[filter]]
channel=["console", "elasticsearch"] # add to main channel
```
