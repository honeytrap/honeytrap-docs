---
title: Canary
---

{% capture overview %}
The canary intercepts payloads using a custom tcp handshaking implementation. 
{% endcapture %}

Using the custom handshake it will send a SYN-ACK to each SYN request it will receive, with other words the tcp three-way-handshake will be completed. This way the canary intercepts all sent payloads. The canary is a Boolean option to enable or disable the use of canaries, which will trigger alerts. The canary is configured within the service part, as shown below.

```
[service.telnet01]
type="telnet"
banner="test"
canary="true"
director="remote"
```
