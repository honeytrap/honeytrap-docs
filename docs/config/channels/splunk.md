---
title: Splunk
---

{% capture overview %}
{% endcapture %}

```
[channel.splunk]
type="splunk"
endpoints=["{endpoint1}", "{endpoint2}"]
token="{token}" 
insecure=[true|false] # don't validate certificate

[[filter]]
channel=["console", "splunk"] # add to main channel
```

