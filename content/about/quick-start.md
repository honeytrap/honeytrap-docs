---
title: Quick Start
linktitle: A Quick Start
description: How to deploy a basic HoneyTrap with Docker.
date: 2018-07-01
publishdate: 2017-07-01
lastmod: 2019-01-30
categories: [fundamentals]
keywords: [quick start]
menu:
  docs:
    parent: "about"
    weight: 20
weight: 10
draft: false
toc: true
---

In this quick start, we'll start a HoneyTrap with the help of Docker. We will start a Docker container with an image of Honeytrap,
automatically downloaded from the docker hub.

The configuration file we'll use for this quick start is described in the [Basic config](/manuals/config/#configuration-file-explained) section.
We'll concentrate on implementing only one [service](/services/), a ssh-simulator with only one [channel](/channels/), the console.

{{% note %}}
This tutorial is created and tested for Linux (Debian/Ubuntu) and MacOSX.
{{% /note %}}

## Step 1: Get Docker

{{% note %}}
[Docker](https://docs.docker.com/install/)  is needed for this quick start installation of HoneyTrap.
{{% /note %}}

To check if you have Docker type the following in a terminal window:

```bash
> docker -v
```
This should show the version of Docker you currently have.
## Step 2: Start HoneyTrap
In a terminalwindow type:
```bash
> docker run -p 8022:8022 honeytrap/honeytrap:latest
```
This pulls the latest version of the HoneyTrap docker and publishes port 8022 to the host.

If you get a message starting with:
```bash
docker: Got permission denied while trying to connect to the Docker daemon socket
```
You need sudo-permission, run the command with prefix sudo.
## Step 3: Test your HoneyTrap

Keep the container running, and open a new terminal window to simulate a ssh connection attempt.

Open a new terminal and enter this command:

```bash
> ssh -p 8022 root@127.0.0.1
```

The following message should be displayed:

```bash
The authenticity of host '[127.0.0.1]:8022 ([127.0.0.1]:8022)' can't be established.
RSA key fingerprint is SHA256:************************************.
Are you sure you want to continue connecting (yes/no)?
```

Answer by typing 'yes'.

You are now asked for the password of the root user which is 'password' if you did not change the configuration file.

```bash
> root@127.0.0.1's password:
```

You should now see the ssh motd indicating you successfully logged in and this prompt:

```bash
> root@host:~$
```

Every command entered into the ssh-simulator will now be logged in your console. <!-- TODO which one? test this -->

<hr>
## What just happened?
A little explanation on what just happened if you followed all  previous steps.

You may have a look at the [basic config](/manuals/basic-configuration) used to start this HoneyTrap. This could help you for a better understanding of the following sections.

## The Docker command explained:
------------------


```bash
> docker run -p 8022:8022 honeytrap/honeytrap:latest
```
What happened when you entered this command?

```bash
# This will start a new docker container.
docker run

# -p xxxx:yyyy will expose the internal port yyyy of the container to the port xxxx of the host interface.
-p 8022:8022

# image:tag  Image created by HoneyTrap developers from which the container will be derived. The tag can be seen as a "version" of the image.
honeytrap/honeytrap:latest
```

When you run this command, Docker starts a container derived from the image honeytrap/honeytrap:latest.

{{% note %}}
This image is built from the Dockerfile which can be found on the[ GitHub ](https://github.com/honeytrap/honeytrap/blob/master/Dockerfile)of HoneyTrap.
{{% /note %}}

In the config file used to run the HoneyTrap Server, only one service is declared: the ssh-simulator, to the port 8022 of the container. That's why we wrote "-p xxxx:8022".

Then, we decided to "link" the port 8022 of our host interface to this port 8022 of the container. That's what we meant by "expose the internal port yyyy to the port of the host xxxx interface".

If we want to "open" the port 8023 of our host interface instead of 8022, we just need to use "-p 8023:8022".

The result is a Docker-container running HoneyTrap with a ssh-simulator.

## This HoneyTrap explained:
------------------

When HoneyTrap starts, you should see something similar to this:

```bash
2018/09/11 08:53:07 Using config file /config/config.toml
Honeytrap starting (bebo4sshmp500090i230)...
Version: 2018-08-14T18:04:25Z (32d1df97390a)
08:53:07.953 honeytrap/server ▶ DEBU 002 Using datadir: /data
08:53:11.170 services ▶ DEBU 004 Could not load private-key, generating one.
08:53:11.341 honeytrap/server ▶ INFO 005 Configured service ssh-simulator (ssh-simulator)
08:53:11.341 honeytrap/server ▶ INFO 007 Configured port tcp/:8022
08:53:11.342 listeners/socket ▶ INFO 00b Listener started: tcp/:8022
```
<hr>

Honeytrap needs a[ config file ](/manuals/basic-configuration/)to start. In this example, the config file is provided by the Dockerfile.
```bash
2018/09/11 08:53:07 Using config file /config/config.toml
```
<hr>
When HoneyTrap succesfully starts:
```bash
Honeytrap starting (bebo4sshmp500090i230)...
```

"bebo4sshmp500090i230" represents a token to identify this HoneyTrap-deployment. (Your token is different.)
<hr>

This is the release date of the version of HoneyTrap used to build the docker image and the first 12 characters from the[ last commit id.](https://github.com/honeytrap/honeytrap/commits/master)

```bash
Version: 2018-08-14T18:04:25Z (32d1df97390a)
```
<hr>

This is a ***DEBUG*** event. We have this event because in the config file, we declared we want this[ minimum level](/configuration/logging). It informs us about the path used to store data.

```bash
08:53:07.953 honeytrap/server ▶ DEBU 002 Using datadir: /data
```
<hr>

As you can see with the `services ▶`, this event concern our unique service, ssh-simulator which needs a RSA Key.  
Since HoneyTrap could not find one in the storage it created one.

```bash
08:53:11.170 services ▶ DEBU 004 Could not load private-key, generating one.
```

<hr>

These two lines inform us that our service and the associated port are well-configured.

```bash
08:53:11.341 honeytrap/server ▶ INFO 005 Configured service ssh-simulator (ssh-simulator)
08:53:11.341 honeytrap/server ▶ INFO 007 Configured port tcp/:8022
```

<hr>

Lastly, this line inform us with `listeners/socket ▶` that HoneyTrap opened the port `tcp/:8022`.

```bash
08:53:11.342 listeners/socket ▶ INFO 00b Listener started: tcp/:8022
```

<hr>

Every 30 seconds, an event called "heartbeat" is logged. Check [heartbeat ](/events/heartbeat/)for more informations.

```bash
honeytrap > heartbeat > category=heartbeat, date=...
```



## The SSH Simulator
------------------

What happened when we did:
```bash
> ssh -p 8022 root@127.0.0.1
```

As soon as HoneyTrap detects a connection attempt, it sends an event to the channel configured in the config file:

```bash
services > ssh > category=ssh, date=2018-10-08 17:33:54.895403 +0200 CEST m=+30.350666354,
destination-ip=127.0.0.1, destination-port=8023, sensor=services, source-ip=127.0.0.1,
source-port=55128, ssh.publickey-type=ssh-rsa,
[...]
ssh.username=root, token=betnhh004aci7got46pg, type=publickey-authentication
```
You can find more informations about the fields of the `events` in [events/events](/events/events).


The client will initiate a SSH handshake with the HoneyTrap to establish a connection.

The HoneyTrap Server will complete the SSH Handshake and will prompt a ssh shell.

Therefore, for each command sent by the client, all the data will be logged and forward to the channel.

{{% note %}}

If you want more informations about the configuration used to launch HoneyTrap, check the [basic config](/manuals/basic-configuration) section.

You can also find more informations / configurations about the `ssh-simulator` in [services/ssh-simulator](/services/ssh-simulator).

{{% /note %}}
