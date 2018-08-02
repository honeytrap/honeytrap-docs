---
title: Kafka
---

{% capture overview %}

{% endcapture %}

```
[channel.kafka]
type="kafka"
brokers=["{broker1}", "{broker2}"]
topic="{topic}" 

[[filter]]
channel=["console", "kafka"] # add to main channel
```

