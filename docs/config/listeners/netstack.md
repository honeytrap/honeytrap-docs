---
title: Netstack
---

{% capture overview %}

{% endcapture %}

Netstack is a custom network stack implementation. The listener is still experimental.

Make sure you'll disable the RST replies of Linux. Otherwise both Linux and Honeytrap will reply to the packet.

```
iptables -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
iptables -I OUTPUT -p icmp --icmp-type destination-unreachable -j DROP
```

The raw listener will use a custom implemented network stack. 

```
$ ip tuntap add user root mode tun tun0
$ ip link set tun0 up
$ ip addr add 10.0.9.1/24 dev tun0
```

Configuration 

```
[listener]
type="netstack"
interfaces=["tun0"]
addr="10.0.9.2"
```
