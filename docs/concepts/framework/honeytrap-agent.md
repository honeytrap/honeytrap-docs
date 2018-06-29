---
approvers:
- nl5887
title: HoneyTrap Agent
---

The HoneyTrap Agent is a small server that will forward all incoming traffic to HoneyTrap Server. All traffic will be accompanied with the original remoting ip address. All traffic will be sent using an encrypted tunnel.

When starting the Honeytrap Server with the Agent listener, on startup the remote key will be printed. This key will be used by clients to validate the authenticity of the server.
