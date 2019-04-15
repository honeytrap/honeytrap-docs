---
title: "Under The Hood: the Socket listener"
linktitle: The socket listener
description: Let's dive into the Socket listener of HoneyTrap.
date: 2018-09-17
keywords: [socketlistener, howto]
menu:
  docs:
    parent: "manuals"
    weight: 90
categories: [UnderTheHood]
slug: "uth-socket-listener"
---
<mark>// TODO This documentation is still work in progress.</mark>

# The socket listener

When you setup HoneyTrap, you can choose between the Sensor Mode, which listen on every port and the Services Mode, which listens only on the ports you chose in your configuration file.  

For instance, in the[ quick start](/about/quick-start), we setup HoneyTrap with this basic configuration:

```bash
[listener]
type="socket"

[service.ssh-simulator]
type="ssh-simulator"

[[port]]
port="tcp/8022"
services=["ssh-simulator"]

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output = "stdout"
level = "debug"
```

We opened the port `tcp/8022` and we linked it to the service `ssh-simulator`.  
How does HoneyTrap handles it?  

## 1. Parse the configuration

For each `[service.******]` declared in the configuration, HoneyTrap will check for the following fields:

+ `type`
+ `director`

The `type` must be equal to one of the HoneyTrap services.  
The `director` is used only for proxy-Services.

It will add all the services declared in the configuration to a `list of services`.


Then, HoneyTrap will check in the configuration file for each `[[port]]`:

1. it creates a tcp/udp address from the field `port`.
2. For this port, it will search in the `list of services` if there is a `service` associated from the field `services`.
3. If it's the case, it adds the tcp/udp address to the `list of addresses` of the `Socket listener`.

## 2. Start the listener

Once it has its `list of addresses`, the listener - here the `socket listener` - is started.  

For each address, it will listen on this address and accept every connection.  
Each connection goes through a channel `conn`.

HoneyTrap will find a service in the `list of services` where it can redirect each `conn`.

For instance, the `socket listener` will open the port `8022`.  
Every connection to this port will be redirected to the `ssh-simulator` service.
