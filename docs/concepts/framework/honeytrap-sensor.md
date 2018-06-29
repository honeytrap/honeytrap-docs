---
title: HoneyTrap Sensor
---

HoneyTrap Sensor mode will capture all data packets against the server. For each SYN, it will reply with a SYN-ACK, after receiving the ACK, the tcp handshake has been completed. Therefore the client will sent her first data packet, which will be captured.

This feature is commonly used within closed networks, for detecting malicious activity. Another use case is in public networks, to gather a variaty of attacks.

