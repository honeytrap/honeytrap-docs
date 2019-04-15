---
title: LDAP
linktitle: LDAP
description: Configurations for LightWeight Directory Access Protocol service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 170
weight: 160
toc: true
---
## What is LDAP?

LDAP is the abreviation for  Lightweight Directory Access Protocol, used for accessing and maintaining distributed directory information services over a internet protocol network.

## Description

The LDAP service will simulate a directory server accessible via LDAP.

## Syntax

```bash
[service.<nickname_of_ldap>]
type="ldap"
```


## Arguments in config file

There are `8` arguments in `ldap` service:

 argument  | default setting | explanation
  ---  | --- | ---
`credentials` |  <span style="color:green">["root:root"]</span> | Set the credentials for the service.
`naming-contexts` |  <span style="color:red">no</span> | RootDSE attribute for DSA masters or shadows.
`supported-ldap-version` |  <span style="color:green">["2","3"]</span> | LDAP protocol version.
`supported-extension` |  <span style="color:green">["1.3.6.1.4.1.1466.20037"]</span> | Extended operations list.
`vendor-name` |  <span style="color:red">no</span> | Name for LDAP Server.
`vendor-version` |  <span style="color:red">no</span> | Release version for LDAP Server.
`description` |  <span style="color:red">no</span> | Description of the LDAP Server.
`objectclass` |  <span style="color:red">no</span> | LDAP Schema element.

## Example

```bash
[service.ldap]
type="ldap"
credentials=["admin:admin", "root:root"]
naming-contexts=[ "dc=example,dc=com", "dc=ad,dc=myserver,dc=com" ]
vendor-name=[ "HT Directory Server" ]
vendor-version=[ "0.1.0.0" ]
description=[ "Directory Server" ]
objectclass=[ "dcObject", "organization" ]

[[port]]
port="tcp/389" #or udp
services=["ldap"]
```

## How to test
```bash
nmap -Pn [IP_ADDRESS] -p 389 -sV
```

#### The test explained
With `nmap` we perform a scan with `-Pn` which skips the ping-test and simply
scans, on `[IP_ADDRESS]` for a `-p` specific port `389`.

#### The result
The result should contain this:
```bash
PORT    STATE SERVICE
389/tcp open  ldap
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
ldap | <span style="color:green">yes</span> | <span style="color:green">yes</span>
