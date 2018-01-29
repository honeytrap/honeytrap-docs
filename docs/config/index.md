---
approvers:
- nl5887
title: Configuration
---

The configuration section describes all configurable options of Honeytrap.

Honeytrap uses the [TOML](https://github.com/toml-lang/toml) configuration format.

This is a minimal configuration sample.

```
[listener]
type="socket"

[service.ssh-simulator]
type="ssh-simulator"
port="tcp/8022"
credentials=["root:root", "root:password"]

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output = "stdout"
level = "debug"
```

### Remote configuration
Configuration files can be loaded from remote using: 

```
honeytrap --config http(s)://remote/config.toml
```

