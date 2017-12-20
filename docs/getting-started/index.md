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

```yaml
version: "2.1"
services:
  elasticsearch:
    # image: elasticsearch:latest
    image: docker.elastic.co/elasticsearch/elasticsearch:5.6.4
    ports:
      - "9200:9200"
      - "9300:9300"
    volumes:
      - /data/elasticsearch/data:/usr/share/elasticsearch/data
      # - ./elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml
    environment:
      # - cluster.name=docker-cluster
      # - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms2048m -Xmx2048m"
      - xpack.security.enabled=false
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nofile:
        soft: 65536
        hard: 65536
    cap_add:
      - IPC_LOCK
    healthcheck:
        test: ["CMD", "curl", "-f", "http://localhost:9200"]
    networks:
      - raven
  kibana:
    # image: kibana:latest
    image: docker.elastic.co/kibana/kibana:5.6.4
    ports:
      - "5601:5601"
    # volumes:
      # - ./kibana.yml:/usr/share/kibana/config/kibana.yml
    environment:
      - XPACK_SECURITY_ENABLED=false
      # - ELASTICSEARCH_USER=elastic
      # - ELASTICSEARCH_PASSWORD=changeme
    depends_on:
        elasticsearch:
            condition: service_healthy
    networks:
      - raven
networks:
  honeytrap:
    external: true
```

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

