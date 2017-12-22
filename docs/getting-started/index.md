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

If you want to use the lxc director features, you need to build Honeytrap using:

```
$ go build -tags="lxc" ...
```

## Docker

First create a Honeytrap network:

```bash
docker network create honeytrap
```

This will use the config-docker.toml file in the current directory and forward ports 5900 and 8022 to the docker instance. If you want to store data into Elasticsearch and analyze with Kibana, it will be easiest to use the following docker-compose.yml.

Add to **/etc/sysctl.conf**, and reload using `sysctl -p /etc/sysctl.conf`.

```
vm.max_map_count = 262144
```

{% gist 631d65691b519fbf99e41228a7f3519f docker-compose-honeytrap.yml %}
{% gist 631d65691b519fbf99e41228a7f3519f config-docker.toml %}

Playing with Honeytrap is the easiest by just starting our docker image. The image is automatically being built by the continuous integration of our master branch. 

```bash
docker run -i -t -p 8022:8022 -v (pwd)/config-docker.toml:/config/config.toml -v (pwd)/data:/data/ honeytrap/honeytrap:latest 
```

## Packages

We plan to have packages for the following operating systems.

#### MacOS

We will create a brew trap to install Honeytrap.

```
brew install honeytrap
```

#### Debian / Ubuntu

#### CentOS / Redhat

