---
title: "What is Honeytrap"
---

{% capture overview %}

This page describes the main concept of the Honeytrap Framework.

{% endcapture %}


{% capture body %}

## The Honeytrap Framework

Honeytrap is a modular framework for running, monitoring and managing honeypots. Using Honeytrap you can use sensors, high interaction and low interaction honeypots together, while still using the same event mechanisms. Honeytrap consists of services, directors, listeners and channels. It is easy to build new services, attach existing honeypots and extend channels or directors.

Honeytrap has three modes: sensor mode, high interaction mode and low interaction mode. The sensor mode just detects traffic, this will be ideally used for detection of movement within your network. Low interaction mode will reply with predefined default responses to requests, following playbooks. Both high and low interaction mode honeypots will use real virtual machines or containers in a contained manner.

Multiple operating systems are supported, like Linux, MacOS and Windows. The available functionalities are depending on the host operating system. The LXC director for example is only available on Linux.

## Listeners
Listeners are listening to your network interfaces for incoming traffic. Using normal sockets, or raw networks you can assign services to specific ip addresses, ports or ranges. 

## Services
The services will emulate or proxy specific traffic. For example there is an ssh-auth service, which will test for usernames and passwords. But there is also a ssh proxy service, which will proxy traffic to a director defined host.

## Directors
The director directs traffic to a specific endpoint. This could be a remote host or a lxc container per attacker.

## Channels
Channels will send the incoming events through a filter to endpoints. The endpoints could be Slack, ELK stack, Splunk, file, console or your SIEM.

{% endcapture %}

{% include templates/concept.md %}
