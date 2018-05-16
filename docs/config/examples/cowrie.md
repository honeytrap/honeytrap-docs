---
title: Cowrie
---

{% capture overview %}

{% endcapture %}

[Cowrie](https://github.com/micheloosterhof/cowrie) is a medium interaction SSH and Telnet honeypot designed to log brute force attacks and the shell interaction performed by the attacker. HoneyTrap can be configured to use Cowrie for ssh traffic.

```
[listener]
type="socket"

[service.ssh]
type="ssh-proxy"
port="tcp/8022"
director="cowrie"

[director.cowrie]
type="forward"
host="127.0.0.1:2222"

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output = "stdout"
level = "debug"
```
