---
title: Compile HoneyTrap Agent
---

{% capture overview %}

In order to install the HoneyTrap Agent, it is advisable to set up the Go environment the following way.

{% endcapture %}


{% capture steps %}

## Installation

Follow these steps to install the HoneyTrap Agent for your host operating system. Make sure Go is installed properly by following [this](/docs/setup/agent/install-go/) guide. Optionally, another output directory may be provided. Notice that some additional configuration may be required.

### Linux

Execute the following steps in order to compile the HoneyTrap Agent from source.

```
$ apt install -y libpcap-dev lxc-dev git

$ mkdir /opt/honeytrap
$ cd /opt/honeytrap/

$ export GOPATH=/opt/honeytrap
$ export PATH=$PATH:/usr/local/go/bin/

$ go get github.com/honeytrap/honeytrap-agent

$ cd src/github.com/honeytrap/honeytrap-agent
$ cp config.sample.toml config.toml
$ $GOPATH/bin/honeytrap-agent
```

### CentOS

```
$ yum install -y libpcap-devel.x86_64 lxc-devel.x86_64 git

$ mkdir /opt/honeytrap
$ cd /opt/honeytrap

$ export GOPATH=/opt/honeytrap
$ export PATH=$PATH:/usr/local/go/bin/

$ go get github.com/honeytrap/honeytrap-agent

$ cd src/github.com/honeytrap/honeytrap-agent
$ cp config.sample.toml config.toml
$ $GOPATH/bin/honeytrap-agent

```

## LXC director

If you want to use the lxc director features, you need to build HoneyTrap using the following configuration.

```
$ go build -tags="lxc" ...
```

{% endcapture %}


{% capture whatsnext %}

* Install the [HoneyTrap Server](/docs/setup/server/install-server).

{% endcapture %}

{% include templates/task.md %}
