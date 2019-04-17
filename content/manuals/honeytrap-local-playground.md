---
title: Create a HoneyTrap Docker local Playground
linktitle: The HoneyTrap local Playground
description: How to create a local environment with Elasticsearch, Kibana and HoneyTrap.
date: 2019-02-13
keywords: [setup]
menu:
  docs:
    parent: "manuals"
    weight: 20
weight: 25
toc: true
---

This page describes the steps create a local playground with Elasticsearch Kibana and HoneyTrap.
If this is your first time with HoneyTrap, we advise you to begin with the[ Quick start](/about/quick-start/).

----
This tutorial is made for Linux and OSX.

----
> **NOTE** Running the docker and docker-compose commands may require the `sudo` prefix depending on the configuration of the system.

## Step 1: Get Docker
---------------
To follow all the steps in this tutorial you need docker-compose. Find out how to install Docker for your system on the [official Docker website's installation instruction](https://docs.docker.com/compose/install/).

## Step 2: Setup paths and network
#### working directory

Create a `honeytrap/` directory (in your `$HOME` for example):
```bash
> mkdir $HOME/honeytrap/
```

#### Create a docker network

Create a docker network:
```bash
> docker network create honeytrap
```
This creates a network called `honeytrap`.

#### Create data infrastructure

Create a data directory for Elasticsearch and change the ownership:
```bash
> sudo mkdir -p /data/elasticsearch/data && sudo chown -R 1000:1000 /data/elasticsearch
```
On Linux you also need to increase the limits of the system:
```bash
> sudo sysctl -w vm.max_map_count=262144
```
On OSX find the whale in the top-bar and go to `Preferences` -> `Advanced` and increase the `Memory` available for Docker.

## Step 3: Download the files

Go to your working directory you created in step 2:

```bash
> cd $HOME/honeytrap/
```

#### Download the configuration file:
```bash
> wget https://raw.githubusercontent.com/AMKuperus/honeytrap-configs/master/HoneyTrap-local-playground/config.toml
```
<!-- TODO change to honeytraprepo when merged -->
#### Download the docker-compose file:
```bash
> wget https://raw.githubusercontent.com/AMKuperus/honeytrap-configs/master/HoneyTrap-local-playground/docker-compose-honeytrap-playground.yml
```
<!-- TODO change to honeytraprepo when merged -->

#### What you should have now:

```bash
> ls
config.toml  docker-compose-honeytrap-playground.yml
```

## Step 4: Start Elasticsearch Kibana and HoneyTrap
---------------
Start the docker-compose file, this will automatically pull the needed files and then start:
```bash
> docker-compose -f docker-compose-honeytrap-playground.yml up
```

This will start a container running `Elasticsearch`, `Kibana` and `HoneyTrap` all running in the `honeytrap` network created in step 2. HoneyTrap will keep retrying to start until Elasticsearch is ready.

> It can take a couple of minutes for the container to be operational so go ahead and grab yourself a new cup of coffee.


## Step 5: Open Kibana and create the HoneyTrap index
In this HoneyTrap installation the data is send to the Elasticsearch cluster that we have just deployed in step 4. To make the incoming data visual we use Kibana.

To open Kibana open a webbrowser and go to `http://localhost:5601`.

![](/manuals/images/kibana_start.png)

To get the data into Kibana we need to set a index-pattern. Kibana will auto-discover the pattern when we start to send the data to Elasticsearch.

Enter the index-name `honeytrap` in the `index-pattern` field.

![](/manuals/images/kibana_setup_index.png)

Now when you go to `Discover` it should show you the HoneyTrap data coming in.

![](/manuals/images/kibana_receiving_data.png)

We can now see the data come in and make visualizations with the incoming data to gain more insight about processes that are happening with the help of Kibana.

## Time to play!
---------------
#### Change the configuration
Now the environment and the HoneyTrap is all setup and running it is time to play. The `config.toml` contains the [ssh-simulator](/services/ssh-simulator/) and the [telnet-service](/services/telnet). You can change the configuration of the HoneyTrap by editing the `config.toml` and add [other services](/services/#services-available) there.
```bash
# Make your changes
> vi config.toml
```
After editing the `config.toml` you need to restart HoneyTrap. You can close HoneyTrap by pressing `[ctrl]+[c]` and then start the container again.

#### Restart Docker
```bash
> docker run --net=host -v $(pwd)/config.toml:/config/config.toml honeytrap/honeytrap:latest
```
