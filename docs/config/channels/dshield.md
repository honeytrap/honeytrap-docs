---
title: Dshield
---

{% capture overview %}
{% endcapture %}

The dshield channel will forward (currently supported ssh and telnet) events to dshield.org. 

```
[channel.dshield]
type="dshield"
user_id="{user_id}"
api_key="{api-key}"

[[filter]]
channel=["console", "dshield"] # add to main channel
```
