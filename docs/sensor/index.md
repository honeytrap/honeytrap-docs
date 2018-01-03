---
approvers:
- nl5887
title: Sensor
---

Honeytrap Sensor mode will capture all data packets against the server. For each SYN, it will reply with a SYN-ACK, after receiving the ACK, the tcp handshake has been completed. Therefore the client will sent her first data packet, which will be captured. 

This feature is commonly used within closed networks, for detecting malicious activity. Another use case is in public networks, to gather a variaty of attacks.

Because this mode is using a custom network stack, it won't work nicely with other services. 

Make sure you'll disable the RST replies of Linux. Otherwise both Linux and Honeytrap will reply to the packet.

```
iptables -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
iptables -I OUTPUT -p icmp --icmp-type destination-unreachable -j DROP
```

{% gist 73d07e884914873869ca04c22c8ee9eb config.toml}

