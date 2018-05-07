---
title: Netstack
---

{% capture overview %}

{% endcapture %}

Netstack is a custom network stack implementation. This can be found at [Github.com](https://github.com/google/netstack).

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
