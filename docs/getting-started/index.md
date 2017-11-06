---
title: Getting started
---

This section provides instructions for installing Honeytrap and setting up Honeytrap. 

## Installation

### Install Go

```
$ cd /usr/local
$ wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
$ tar vxf go1.9.linux-amd64.tar.gz
```

### Installation from source

#### Linux

```
$ apt install -y libpcap-dev lxc-dev

$ mkdir /opt/honeytrap
$ cd /opt/honeytrap/

$ export GOPATH=/opt/honeytrap
$ export PATH=$PATH:/usr/local/go/bin/

$ go get github.com/honeytrap/honeytrap/...

$ cp config.toml.sample config.toml
$ $GOPATH/bin/honeytrap
```

## Packages

We plan to have packages for the following operating systems.

#### MacOS

We will create a brew trap to install Honeytrap.

```
brew install honeytrap
```
