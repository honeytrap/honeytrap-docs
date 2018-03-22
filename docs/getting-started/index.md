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
$ apt install -y libpcap-dev lxc-dev git

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

## Docker-compose (HoneyTrap Server)

### Install docker and docker-compose

Playing with Honeytrap is the easiest by just starting our docker image. The image is automatically being built by the continuous integration of our master branch. 

Make sure you have installed a recent version of Docker and Docker Compose. 

* https://docs.docker.com/compose/install/#install-compose
* https://docs.docker.com/install/linux/docker-ce/ubuntu/

### Setup prerequisites

First create a Honeytrap network:

```bash
docker network create honeytrap
```

This will use the config-docker.toml file in the current directory and forward ports 5900 and 8022 to the docker instance. If you want to store data into Elasticsearch and analyze with Kibana, it will be easiest to use the following docker-compose.yml.

If you are running Linux, you need to add the following line to **/etc/sysctl.conf**, and reload using `sysctl -p /etc/sysctl.conf`.

```
vm.max_map_count = 262144
```

Create data folder:

```
mkdir -p /data/elasticsearch
chown -R 1000:1000 /data/elasticsearch
```

Download both the docker compose and the config to your computer. 

```
wget https://gist.githubusercontent.com/nl5887/631d65691b519fbf99e41228a7f3519f/raw/docker-compose-honeytrap.yml
wget https://gist.githubusercontent.com/nl5887/631d65691b519fbf99e41228a7f3519f/raw/config-docker.toml
```

### Setup HoneyTrap Server

Make sure you are running the newest version:

```bash
docker-compose -f ./docker-compose-honeytrap.yml pull
```

Note: If you're running MacOS, make sure to share ```/data/elasticsearch``` in Docker preferences.

Now you can start the Docker Compose script: 

```bash
docker-compose -f ./docker-compose-honeytrap.yml up
```

### Run the HoneyTrap Agent

The docker compose configuration will use the Agent listener by default.

Now you can start the Honeytrap Agent. Depending on the method of installation:

1) By running the binary from the directory in which the binary was compiled:

```
./honeytrap-agent --remote-key {key} --server {ip}:1339
```

2) Or by running the application (i.e. after installing the homebrew package):

```
sudo honeytrap-agent --remote-key {key} --server {ip}:1339
```

## Packages

We plan to have packages for the following operating systems.

#### MacOS

We will create a brew trap to install Honeytrap.

```
brew install honeytrap/stable/honeytrap-agent
```

#### Debian / Ubuntu

#### CentOS / Redhat

