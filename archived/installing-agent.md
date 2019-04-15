---
title: Install HoneyTrap Agent
linktitle: Install HoneyTrap Agent
description: How to install HoneyTrap Agents mode.
date: 2018-10-31
keywords: [setup]
menu:
  docs:
    parent: "manuals"
    weight: 30
weight: 50
toc: true
---

This page describes the steps to install HoneyTrap in Agent mode.

----
This tutorial is made for Linux.

----

We will make two different installations:  

+ First, we install our centralized HoneyTrap server.
+ Secondly, we setup an Agent. You can install as many agents as you want.



Let's first install HoneyTrap Server.


## Step 1: Get Docker
---------------

{{% note %}}
[Docker ](https://docs.docker.com/install/)and[ Docker-Compose ](https://docs.docker.com/compose/install/)are needed for the installation of HoneyTrap Agent mode.
{{% /note %}}

To check your installations:

```bash
> docker -v
> docker-compose -v
```

## Step 2: Setup

#### working directory

Create a `honeytrap/` directory (in your `$HOME` for example):
```bash
> mkdir $HOME/honeytrap/
```


#### Docker network

Create a docker network:
```bash
> docker network create honeytrap
```

#### Create data infrastructure

Create data directory for Elasticsearch and change the ownership:
```bash
> sudo mkdir -p /data/elasticsearch/data
> sudo chown -R 1000:1000 /data/elasticsearch
```

You also need to increase the limits of the system:
```bash
> sudo sysctl -w vm.max_map_count=262144
```



## Step 3: Download the files

Go to your working directory:

```bash
> cd $HOME/honeytrap/
```

#### Download the configuration file:
```bash
> wget https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/agent-server/config-server.toml
```

#### Download the docker-compose file:
```bash
> wget https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/agent-server/docker-compose-server.yml
```




#### What you should have now:

```bash
> ls
`config-server.toml  docker-compose-server.yml`
```



## Step 4: Start HoneyTrap
---------------

Make sure you are running the latest versions:

```bash
> docker-compose -f ./docker-compose-server.yml pull
```

Start the Docker Compose script:

```bash
> docker-compose -f ./docker-compose-server.yml up
```

This will start Elasticsearch, Kibana and HoneyTrap.
Keep this terminal opened and wait a few minutes so Elasticsearch and Kibana are completely started.

> HoneyTrap is now running!

<br>


> Be careful about this line:  
`HoneyTrap Agent Server public key: [...]`

This is Server public key you'll need later.

<br>


You can see the logs on Kibana at `http://localhost:5601`



>We completed our first installation!  

>Your centralized HoneyTrap Server is running.  

>Let's install an Agent now.






## Step 5: Install an agent
---------------

In a new terminal:

#### Download the config file of the agent

```bash
> wget https://raw.githubusercontent.com/honeytrap/honeytrap-agent/master/config.sample.toml
```

#### Replace the server public key

```bash
> vi config.sample.toml
```

On the line `remote-key`, put your `HoneyTrap Agent Server public key`.

Your `config-agents.toml` should look like this:

```bash
server="127.0.0.1:1337"
remote-key="1040b19c33575bbef2a9ce17adc2ad15539fe7adedc6d14a669251a8f7f7a256"
```

#### Start your agent

```bash
> docker run --net=host -v $(PWD)/config-agents.toml:/config/config.toml honeytrap/honeytrap-agent
```
