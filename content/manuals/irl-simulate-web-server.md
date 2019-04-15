---
title: "In Real Life: simulate a web server"
linktitle: Simulate a webserver
description: Simulate a device on your network.
date: 2018-10-10
keywords: [webserver, howto]
menu:
  docs:
    parent: "manuals"
    weight: 80
categories: [UnderTheHood]
slug: "irl-simulate-web-server"
---
<mark>// TODO This documentation is still work in progress.</mark>

One of the possibile use cases for HoneyTrap can be to simulate a device in your DMZ  to "attract" potentials hackers.
You could also simulate a device within another part of your network, for internals attacks.

In this scenario, we decided to simulate a web server in our DMZ. We actually did that on one of our domain, keep on reading to find out more.

-------

Ports opened on a web server usually are `tcp/80` (for HTTP) and `tcp/443` (for HTTPS).

Let's simulate a web server, **powered by HoneyTrap**, with `tcp/80` and `tcp/443` as usual. Besides these ports, we'll also open two more
ports: `tcp/21` (for ftp) and `tcp/23` (for telnet).

Why do we open these additional ports?

Our goal is to simulate the *most attractive* potential security hole/breach while also being the most *resembling* web server.

By *attractive*, we mean that we know these two ports, linked to two different protocols, have a lot of known exploits. By configuring our
web server on these ports, our device will seem far easier to hack than a "genuine" one.  

By *resembling*, we mean that it will look very strange to potential attackers if they find the port `8545` opened, linked to an Ethereum
node. It won't look weird to find `tcp/21` and `tcp/23` opened.   

Remember, we want our honeypot to look like an attractive target, so
attackers will penetrate the honeypot and no other devices on your network.

-------


## Step 1: Working directory

We'll assume you are already familiar with the setup of a HoneyTrap.
Otherwise, you need to do the `step 1` and `step 2` of[ Install HoneyTrap Playground](/manuals/honeytrap-local-playground/#step-1-get-docker).


## Step 2: Our "web server" config


#### Download the config

```bash
> wget https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/scenarios/simulate-device/config-web-server.toml
```

+ You need to change the IP address in the Elasticsearch channel to your own prefered IP address.
+ You can change the configurations of the[ http service](/services/http/), the[ https service](/services/https/), the[ ftp service](/services/ftp/) and the[ telnet service](/services/telnet/) in the config-web-server.toml .



#### Download the docker-compose file:
```bash
> wget https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/scenarios/simulate-devide/docker-compose-web-server.yml
```


## Step 3: Start HoneyTrap

```bash
> docker-compose -f ./docker-compose-web-server.yml pull
```

```bash
> docker-compose -f ./docker-compose-web-server.yml up
```

```bash
> docker run --net=host -v $(PWD)/config-web-server.toml:/config/config.toml honeytrap/honeytrap:latest
```

<br>

> Your HoneyTrap Web Server is running!
