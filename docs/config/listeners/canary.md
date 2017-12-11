---
title: Canary
---

{% capture overview %}
The canary intercepts payloads using a custom tcp handshaking implementation. 
{% endcapture %}

Using the custom handshake it will send a SYN-ACK to each SYN request it will receive, with other words the tcp three-way-handshake will be completed. This way the canary intercepts all sent payloads.
