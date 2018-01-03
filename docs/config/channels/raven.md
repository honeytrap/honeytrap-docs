---
title: Raven
---

{% capture overview %}

{% endcapture %}

```
[channel.raven]
type="raven"
token="{unique token here}"
server="https://{server}/{topic}"
```

```
docker network create raven
```

Docker for running Raven server and collectors:

{% gist c46a961107db494ae34e7fad5e0de6d2 }

```
openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout server.key -out server.crt 
```

