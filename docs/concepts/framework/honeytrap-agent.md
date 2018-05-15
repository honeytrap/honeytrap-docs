---
approvers:
- nl5887
title: HoneyTrap Agent
---

The HoneyTrap Agent is a small server that will forward all incoming traffic to HoneyTrap Server. All traffic will be accompanied with the original remoting ip address. All traffic will be sent using an encrypted tunnel.

Use cases
----------

* Easy deployment: you can deploy hundreds of agents connecting to the same HoneyTrap server
* Security: the honeytrap server can be located outside the network

Docker
------

If you're running HoneyTrap in Agent mode, it will be easiest to run the server in Docker.

```
docker run -i -t -p 1337:1337 -v (pwd)/config-agent.toml:/config/config.toml -v (pwd)/data:/data/ honeytrap/honeytrap:latest
```

Go
---

When using `go get` the HoneyTrap Agent will be compiled automatically. You'll find the binary in $GOPATH/bin.

```
go get github.com/honeytrap/honeytrap-agent
```

Configuration
--------------

The HoneyTrap Server needs to be configured to use the Agent listener. By default the agent listener will listen to port :1337.

```
[listener]
type="agent"
listen=":1337"
```

When starting the server with the agent, on startup the remote key will be printed. This key will be used by clients to validate the authenticity of the server.

Now the Agent can be started using:

```
setcap 'cap_net_bind_service=+ep' honeytrap-agent --remote-key {key} --server {ip}:1337
```

Using the `cap_net_bind_service` capability allows HoneyTrap Agent to bind to lower ports, while running under a non-privileged user account.

This will start the HoneyTrap Agent, which will connect to the Honetyrap Server on **{ip}:1337**. The Agent will automatically reconnect when the connection with the server has been lost.

### Agent configuration
```
server="{host}"
remote-key="{remote-key}"
```

