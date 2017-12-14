---
title: Services
---

{% capture overview %}
Services define the functionality behind the port. This could be extended to all kind of services, in general there are emulated services like the ssh service or proxied services like the ssh-proxy service. The services will have most of the time understanding of the protocol, hence will generate events.
{% endcapture %}

== Emulated 
Emulated services will have programmed responses to requests. 

== Proxy 
Proxy services will proxy incoming traffic to the director defined host. 
