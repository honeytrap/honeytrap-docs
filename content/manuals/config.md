---
title: Configuration file
linktitle: The Configuration File
description: How to setup a configuration-file for HoneyTrap.
date: 2018-06-01
keywords: [concepts]
menu:
  docs:
    parent: "manuals"
    weight: 10
weight: 50
toc: true
---

You will need a configuration file to start HoneyTrap. The configuration file must be written in `toml` file format. Using the toml-file-format it is easy to change configurations for HoneyTrap.

You can find the configurations used for the different modes of HoneyTrap on our[ github repository](https://github.com/honeytrap/honeytrap-configs).

## Configuration-file explained
This is the configuration used for the [quick start](/about/quick-start/). You can find it on the [github repository](https://github.com/honeytrap/honeytrap-configs/blob/master/server-standalone/config-server-standalone.toml) of HoneyTrap-configurations. We will explain all the different parts of this configuration to gain more insight how the toml-configuration works.

```bash
[listener]
type="socket"

[service.ssh-simulator]
type="ssh-simulator"
credentials=["root:root", "root:password"]

[[port]]
port="tcp/8022"
services=["ssh-simulator"]

[channel.console]
type="console"

[[filter]]
channel=["console"]

[[logging]]
output="stdout"
level="debug"
```
<hr>
## [listener]
```bash
[listener]
type="socket"
```
`[listener]` defines how HoneyTrap listens to the incoming traffic.
In this example, with `type="socket"`, only some configured ports are listened on.
You can define only one listener.

{{% note %}}
More information about [listeners](/listeners/) or the [socket listener](/listeners/socket).
{{% /note %}}
<hr>
## [service.ssh-simulator]
With `socket` chosen as listener, we need to explicitly declare each service we want to use.

In this configuration file, for simplicity, we defined only one service, the ssh-simulator.


```bash
[service.ssh-simulator]
type="ssh-simulator"
credentials=["root:root", "root:password"]
```
#### For each service:

First we **need** to define the name of the service.
The convention is:
```bash
[service.<you_choose_the_name>]
```
The name can be freely chosen and is referred by in the channel output.

After that  we **need** to define the type of the service.
The convention is:
```bash
type=<official_name_of_service>
```

Finally, for each service, we **can** define some "arguments". Each service has its own arguments. If you don't define them in the configuration file, the default arguments will be used.

In this example, we define `["root:root","root:password"]` as credentials. If we delete this line of the configuration file, the default behaviour of ssh-simulator will be to allow all credentials.


{{% note %}}
Read more about [services](/services/) and [ssh-simulator service](/services/ssh-simulator).
{{% /note %}}
<hr>
## [[port]]

Each service defined in the configuration file needs a `[[port]]` defined.

```bash
[[port]]
port="tcp/8022"
services=["ssh-simulator"]
```

Firs we **need** to define to which ports we want to link to the service.
The convention is:
```bash
ports=["PROTOCOL/PORT", "PROTOCOL/PORT"]
```
if you declare several ports.
```bash
port="PROTOCOL/PORT"
```
if you declare only one port.

In this configuration file, we linked `tcp/8022` to our service.

After that we **need** to define the name of the service we want to link these ports.
The convention is:  
```bash
services=["<chosen_name_for_the_service>"]
```

{{% note %}}
More information about [ports service](/services/#port).
{{% /note %}}
<hr>
## [channel.console]

The channel defines by which way you want to deliver events, alerts and logs of HoneyTrap. You can define several channels.

```bash
[channel.console]
type="console"
```
#### For each channel:

First we **need** to define the name of the channel.
The convention is:
```bash
[channel.<you_choose_the_name>]
```
The name can be freely chosen and is used in the filter section.

After that we **need** to define the type of the channel.
The convention is:
```bash
type=<official_name_of_channel>
```
In this example, all the events will be logged to the console.

{{% note %}}
Find out more about [channels](/channels) and the [console channel](/channels/console).
{{% /note %}}
<hr>
## [[filter]]

The filter selects the data that is send to a previously defined channel.  

```bash
[[filter]]
channel=["console"]
```

We **need** to define on which channel this filter will be applied.
The convention is:
```bash
channel=["chosen_name_for_the_channel"]
```

We could have defined a `type=` to filter which events we want to pipe to this channel but in this example, for simplicity reasons, we didn't do it. Therefore, each and every event will be logged into our chosen channel.

{{% note %}}
More information about [filters](/filters/filters).
{{% /note %}}
<hr>
## [[logging]]

Logging defines the logging backend, needed to view log messages.

```bash
[[logging]]
output="stdout"
level="debug"
```

`output` defines the stream you want to use for logging.
Here, we chose to use `stdout`.

`level` defines the minimal level of events you want to log.
In this example, `debug` is the smallest level which means all the logs will appear.

{{% note %}}
More configurations for [logging](/logging/logging).
{{% /note %}}
