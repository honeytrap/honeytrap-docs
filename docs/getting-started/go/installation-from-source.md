---
title: Installation from source
---

In order to install the Honeutrap Agent, it is advisable to set up the Go environment as follows.

#### Linux

```
$ apt install -y libpcap-dev lxc-dev git

$ mkdir /opt/honeytrap
$ cd /opt/honeytrap/

$ export GOPATH=/opt/honeytrap
$ export PATH=$PATH:/usr/local/go/bin/

$ go get github.com/honeytrap/honeytrap-agent

$ cp config.toml.sample config.toml
$ $GOPATH/bin/honeytrap
```

If you want to use the lxc director features, you need to build Honeytrap using:

```
$ go build -tags="lxc" ...
```

