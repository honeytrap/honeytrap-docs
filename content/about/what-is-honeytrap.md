---
title: What is HoneyTrap
linktitle: What is HoneyTrap
description: A open-source framework for honeypots.
date: 2017-02-01
publishdate: 2017-02-01
lastmod: 2017-02-01
layout: single
menu:
  docs:
    parent: "about"
    weight: 10
weight: 10
sections_weight: 10
---

HoneyTrap is an opensource framework for running, monitoring and managing honeypots.
With support for different types of modes, HoneyTrap can be used do deploy complex honeypot architectures
or just to deploy a single server.

Depending on the mode you choose, you can either listen to all ports for detecting threats and collecting information, or listen to a specific port and give predefined answers.

Moreover, you can choose to deploy a multitude of agents, on active servers or separately, which will forward all the attacking traffic to your central HoneyTrap.

Multiple operating systems are supported, like Linux, MacOS and Windows. Some available functionalities are depending on the host operating system -the LXC director for example is only available on Linux- but most of them are available for every OS.

#### Why do you need HoneyTrap?


+ Find out if you're specifically being targetted, or just random. Know who your enemies are.
+ Stall your attackers, and see what techniques they are using.
+ Fingerprint malware being used, update signatures.
+ Find out which exploits are being used against you.
+ Gain IP blacklists.
+ Detect breaches.
+ Allow attackers to retrieve prepared data (misleading information).
