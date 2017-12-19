---
approvers:
- nl5887
title: Agent
---

The Honeytrap Agent is a small server that will forward all incoming traffic to the Honeytrap server. All traffic will be accompanied with the original remoting ip address. All traffic will be sent using an encrypted tunnel.

Use cases
----------

* easy deployment: you can deploy hundreds of agents connecting to the same Honeytrap server
* security: the honeytrap server can be located outside the network

Configuration
--------------

The Honeytrap Server needs to be configured to use the Agent listener. By default the agent listener will listen to port :1339. 

```
[listener]
type="agent"
listen=":1339"
```

When starting the server with the agent, on startup the remote key will be printed. This key will be used by clients to validate the authenticity of the server. 

Now the Agent can be started using:

```
honeytrap-agent --remote-key {key} {ip}:1337
```

This will start the Honeytrap Agent, which will connect to the Honetyrap Server on **{ip}:1337**. The Agent will automatically reconnect when the connection with the server has been lost. 
