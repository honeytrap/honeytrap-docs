---
approvers:
- nl5887
title: Honeytrap Documentation
---

Honeytrap documentation can help you set up Honeytrap, learn about the system, or get your applications and workloads running on Honeytrap. To learn the basics of what Honeytrap is and how it works, read "[What is Honeytrap](/docs/concepts/overview/)".

## Getting started

The [Setup](/docs/setup/) page might help you get Honeytrap up and running.

## Features

* Combine multiple services to one honeypot, eg a LAMP server
* Honeytrap Agent will download the configuration from the Honeytrap Server
* Use the Honeytrap Agent to redirect traffic out of the network to a seperate network
* Deploy a large amount agents while having one Honeytrap Server, configuration will be downloaded automatically and logging centralized
* Payload detection to determine which service should handle the request, one port can handle multiple protocols
* Monitor lateral movement within your network with the Sensor listener. The sensor will complete the handshake (in case of tcp), and store the payload
* Create high interaction honeypots using the LXC or remote hosts directors, traffic will be man-in-the-middle proxied, while information will be extracted
* Extend honeytrap with existing honeypots (like cowrie or glutton), while using the logging and listening framework of Honeytrap
* Advanced logging system with filtering and logging to Elasticsearch, Kafka, Splunk, Raven, File or Console
* Services are easy extensible and will extract as much information as possible
* Low- to high interaction Honeypots, where connections will be upgraded seamless to high interaction
* Small dashboard containing event statistics

## Development

If you want to extend existing services or creating new, you'll probably find the [Development](/docs/development/) section helpful.

## Support

Honeytrap is actively being maintained, developed and supported by DutchSec. 

## About [DutchSec](https://dutchsec.com/)

DutchSec’s mission is to safeguard the evolution of technology and therewith humanity. By delivering groundbreaking and solid, yet affordable security solutions we make sure no people, companies or institutes are harmed while using technology. We aim to make cyber security available for everyone.

Our team consists of boundary pushing cyber crime experts, grey hat hackers and developers specialized in big data, machine learning, data- and context driven security. By building open source and custom-made security tooling we protect and defend data, both offensively and proactively.

We work on the front line of security development and explore undiscovered grounds to fulfill our social (and corporate) responsibility. We are driven by the power of shared knowledge and constant learning, and hope to instigate critical thinking in all who use technology in order to increase worldwide safety. We therefore stimulate an open culture, without competition or rivalry, for our own team, as well as our clients. 

Security is what we do, safety is what you get.
