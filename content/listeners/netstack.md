---
title: Netstack
linktitle: Netstack
description: Configuration for Netstack listener
date: 2018-10-31
categories: [listeners]
keywords: [listeners]
menu:
  docs:
    parent: "listeners"
    weight: 30
weight: 20
toc: true
---


- Supported Modes: Sensor, high- and low-interaction
- Network protocols: IPv4 and IPv6
- TLS capable: yes (up to TLS1.3)
- OS: linux

## Description

The `netstack` listener is a raw listener using its own network stack and can be used 
with all modes. It will produce events with raw payload on all UDP/TCP connections,
or when `sniffer=true` is set, on all connections (eg. ARP). If TLS certificates
are present it will also decode the TLS payloads (see [tls](#tls-id)).

Note:
- When using tls, the services which do their own tls can't be used.
- When no ports or addresses are excluded, remote connectivity is lost to the host machine. If this is intentional then set `allow_no_excludes=true` in the configuration, otherwise honeytrap won't start.

Use `type="netstack"` to activate this listener.


## Requirements

A **Linux OS** to run on.

The following iptables rules need to be set on the honeytrap host.
```
# iptables -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
# iptables -I OUTPUT -p icmp --icmp-type destination-unreachable -j DROP
```


## TLS {#tls-id}

For TLS decryption at least one certificate and private key needs to be configured.
All TLS events have a `type=tls` and a JA3 fingerprint. Also the TLS server will change
its config on every new connection to hinder fingerprinters (like JARM scans).

Each port can be configured with its own certificate. As a special case, a certificate
set on port `tcp/0` will be used as a fallback for all ports which have no certificate set.


```toml
[[port]]
port="tcp/0"

# certificate_file: file path.
certificate_file="certs/honeytrap.crt"

# key_file: file path.
key_file="certs/honeytrap.key"
```

You could use this to create a self-signed certificate and private key>
`openssl req -x509 -nodes -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365`


## Syntax

```bash
[listener]
# Set this to use this listener. Required.
type="netstack"

# The name of the network interface to listen on. Required.
# `ip address` will show the interfaces, only one name allowed.
interface="iface"

# Addresses used on "iface". Optional.
# defaults to all addresses found on "iface".
addresses=["203.0.113.4/32","2001:db8:8:4:2/32"]

# Ports listed here will be ignored. Optional.
# Traffic to these ports is handled by the host.
# No events are produced on traffic over these ports.
# Format: [transport-protocol-number/]<port-number> eg. ["udp/123", "456"]
# not setting a transport-protocol will block port for all protocols (udp/tcp)
exclude_ports=["tcp/22"]

# Address ranges listed here will be ignored. Optional.
# Traffic to these addresses are handled by the host.
# No events are produced on traffic from these addresses.
# Format: CIDR notation, eg. "203.0.113.0/24"
exclude_addresses=["203.0.113.100/32"]

# Force the listener to start without excluded ports or addresses. Optional.
# Defaults to false.
# Format: boolean true/false
# Note that if "exclude_ports" and "exclude_addresses" are not set, remote
# connectivity to the host machine is lost.
allow_no_exclude=false

# With the sniffer events are made on all incoming traffic, instead of udp/tcp only. Optional.
# Defaults to false.
# Format: boolean true/false
sniffer=false
```

## How many?

There needs to be one listener and there **can only be one**.  


## Arguments in configuration file

 argument  | default setting | explanation
  ---  | --- | ---
`type` |  <span style="color:red">none</span> | the listener type (="netstack")
`interface` |  <span style="color:red">none</span> | name of the network interface to use (eg. eth0).
`addresses` | all addresses on interface | Set specific address(es) to listen on. CIDR notation.
`exclude_ports` | <span style="color:red">none</span> | exclude from netstack, the host will handle this. No events are produced on traffic over these ports. Format: [transport-protocol-number/]<port-number> eg. ["udp/123", "456"]
`exclude_addresses` | <span style="color:red">none</span> | exclude address range from netstack, the host will handle this. No events are produced on traffic from these addresses. CIDR notation.
`allow_no_exclude` | false | allow it to run without any exclusions. Remote connectivity with host will not be possible.
`sniffer` | false | use the sniffer too. This creates events on all inbound network activity.

## Example {#example-id}

Run Honeytrap on a linux system with an ssh server listening on port 8022.
Exclude port 8022 to be able to make _ssh_ connections and use the _http_ service on ports 80 for HTTP and 443 for HTTPS.
It outputs logs and events to the console.
```bash
# config.toml

[listener]
type="netstack"
interface="eth0"
exclude_ports=["tcp/8022"]

[service.http01]
type="http"

[[port]]
port="tcp/0"
tls_certificate="certs/example.crt"
tls_key="certs/example.key"

[[port]]
port="tcp/80"
services=["http01"]

[[port]]
port="tcp/443"
services=["http01"]

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output="stdout"
level="debug"
```


## Availability

 | Linux | MacOS | Windows |
--- | --- | --- |
<span style="color:green">yes</span> | <span style="color:red">no</span> | <span style="color:red">no</span>
