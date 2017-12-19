---
approvers:
- nl5887
title: Agent
---

The Honeytrap Agent is a small server that will forward all incoming traffic to the Honeytrap server. All traffic will be accompanied with the original remoting ip address.

Use cases
----------

* easy deployment: you can deploy hundreds of agents connecting to the same Honeytrap server
* security: the honeytrap server can be located outside the network

Configuration
--------------

The Honeytrap Server needs to be configured to use the Agent listener. 

```
[listener]
type="agent"
```

Now the Agent can be started using:

```
honeytrap-agent {ip}:1337
```

This will start the Honeytrap Agent, which will connect to the Honetyrap Server on **{ip}:1337**. The Agent will automatically reconnect when the connection with the server has been lost. 
