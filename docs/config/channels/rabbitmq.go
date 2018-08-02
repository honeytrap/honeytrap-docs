---
title: RabbitMQ
---

{% capture overview %}

{% endcapture %}

```
[channel.rabbitmq]
type="rabbitmq"
address="{address}" # amqp://guest:guest@localhost:5672/
queue="{queue}" 

[[filter]]
channel=["console", "rabbitmq"] # add to main channel
```

