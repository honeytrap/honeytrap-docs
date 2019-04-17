---
title: Install HoneyTrap on a RaspberryPi
linktitle: HoneyTrap on a RaspberryPi
description: How to install HoneyTrap on a RaspberryPi.
date: 2019-02-13
keywords: [setup, raspberry pi]
menu:
  docs:
    parent: "manuals"
    weight: 25
weight: 25
toc: true
---
The RaspberryPi is the perfect host for HoneyTrap. In this guide we install a HoneyTrap on a RaspberryPi 3b v1.2 which is the recommended RaspberryPi to use for a HoneyTrap installation.

It should be no problem to host HoneyTrap on higher versions of RaspberryPi, however we do not have a actual list of proven stable RaspberryPi versions that are able to run HoneyTrap stable.<!-- TODO test HoneyTrap on other Pi's -->

>For easier readability from this point on we refer to a `RaspberryPi` 3b v1.2 as `Pi`.
<hr>
> **Tip:** In the code-blocks in this tutorial we use `$` for the Pi and `>` for pc/laptop.

## Knowledge level
To complete this tutorial with success you need basic computer knowledge. If you are able to open a `terminal-window` and are able to start a `ssh-session` and know what `git` is you should have no trouble succeeding.

If you are a `1337 dev` this tutorial is not challenging enough but can be seen as a addition to the documentation.

## Requirements
Here is a short shopping list of items needed to follow this tutorial:

- RaspberryPi 3b v1.2
- RaspberryPi Power-supply (5v 2.5A MicroUSB)
- LAN Ethernet cable
- 16Gb MicroSD card
- (optional) RaspberryPi case
- USB Keyboard
- Monitor with HDMI-port
- HDMI-cable
- SD-card reader
- SD->MicroSD adapter
- A laptop/pc with a terminal, internet access and docker, docker-compose and Etcher.
- Internet connection
- Github-account

> This tutorial was made using Debian Linux, but should also work with MacOsX and Windows (For Windows make sure you have a alternative for the terminal like PuTTy)

## Step 1: Install DietPi
As a platform to install HoneyTrap on we will use DietPi. DietPi is a lightweight Debian based OS for single-board computers like the RapberryPi.

### Download DietPi image
Download a DietPi image from the [official DietPi download page](https://dietpi.com/#download). Find the RaspberryPi in the list and download the image.
### Install DietPi with Etcher
> If you do not have Etcher visit the [official Etcher website](https://www.balena.io/etcher/). Etcher is available for Linux, MacOsX and Windows.

![](/manuals/images/etcher_setup.png)

Open Etcher and insert the SD-card in the card reader. Select the DietPi image downloaded in the previous step for `Select image` and the SD-card for `Select drive`.

Now hit `Flash!` and Etcher flashes the image to the SD-card.
When Etcher finishes make sure the SD-card is unmounted before removing it from the card reader.
<hr>
#### <mark>From here proceed on the Pi</mark>
<hr>
## Step 2: Setup the Pi
Gently slide the MicroSD-card into the MicroSDcard-slot from the `Pi`. Attach the HDMI, LAN and keyboard to the `Pi` and finally attach the `Pi` to the adapter.

If the card was flashed correct you should now see some Raspberry's on the top of the screen.

> A RaspberryPi is a small computer. For their size they are very powerful, but can't be compared to normal computers, so be gentle to the little machine and have some patience while it does it's work.

### First time configuration
The first time DietPi starts it will guide you trough setting up the `Pi`.

#### Change username and password
You will see a blue screen where you are asked to change the  global and unix (root and dietpi user) password. Be advised to change all passwords.

> The order of this tutorial can vary to the real installation.

### Configuration
After changing the password the `Pi` upgrade and install files. After this process it will reboot itself. After reboot login and you will go to the configuration-menu is shown in a blue screen. From here we can change the `SSH-settings`, `timezone-settings` and make sure the `wifi` is disabled.
![](/manuals/images/dietpi-config.png)

First go to the `DietPi-Config` and change the `timezone` and `wifi` settings.

#### Timezone
Set the timezone to your own timezone in `Language/Regional Options`. Setting the wrong timezone can cause conflicts.

#### Disable WIFI
The best setup for HoneyTrap is without `wifi`. In the `Network options: Adapters` we can make sure the `Wifi` is disabled. Make sure the `Onboard Wifi` is turned to `[Off]`

##### Return to the DietPi-Software menu with [exit]

#### SSH-settings
The `SSH-Settings` can be from the DietPi-Software menu.
Standard DietPi uses Dropbear, change this to use OpenSSH.
From the DietPi-Software menu go to `SSH Server` and select `OpenSSH` and hit `[enter]`.

#### Finish the configuration and install changed settings
Now we have set everything correct select `Install` from the `DietPI-Software` menu and the `Pi` will start to install configure and uninstall all the settings we just set. When this process is finished the `Pi` will reboot and we will be brought to the `tty` from the `Pi` which shows us a `motd` that contains some usefull information about the `Pi` and a `commandline`.

#### Remember the Pi's IP
From the `motd` find the `Pi's` ip-address and remember this. You will need this in the feature to enter the `Pi` from `SSH` or for example give it permissions on your network.
![](/manuals/images/dietpi-after-login.png)

The `ip-address` is the `Pi's` address inside your network.

#### Install iptables and iptables-persistant
For HoneyTrap we need to change the iptables for in and outgoing traffic. For this reason we install `iptables` and `iptables-persistent`. From the commandline perform the following commands:
```bash
$   sudo apt update
$   sudo apt install iptables
$   sudo apt install iptables-persistent
```
![](/manuals/images/dietpi-iptables.png)
After running the `iptables-persistent` command you will get 2 blue screen menu's where you can select yes both times.
<hr>
#### <mark>From here proceed on your pc/laptop</mark>
<hr>
## Step 3: Compile Debian package
Open a terminal-window and clone the `honeytrap/packaging` repository:
```bash
>   git clone https://github.com/honeytrap/honeytrap-packaging.git
```
After cloning the repository enter the directory and show what is inside:
```bash
>   cd honeytrap-packaging/docker && ls
```
Amongst some other files you should now also see `Dockerfile-debian`.
The `dockerfile` contains the code to create a `builder` that can create the HoneyTrap for Debian. Perform the following command:
```bash
>   sudo docker build -t debian-builder -f Dockerfile-debian .
```
>_If this command throws a error try running the command appended by `--no-cache` flag._

Now navigate to the `debian` folder and run the `docker-run` command:
```bash
> cd ../debian/
> docker run -e OS=linux -e ARCH=arm -it --mount type=bind,source=$(pwd),target=/build debian-builder sh /build/build-honeytrap.sh
```
The builder that we created with the `Dockerfile-debian` will now create the `honeytrap.deb` in the `debian` directory.

Now copy the `honeytrap.deb` file to the `Pi`:
```bash
>   sudo scp honeytrap.deb root@[PI_IP_ADDRESS]:
```
<hr>
#### <mark>From here proceed on the Pi</mark>
<hr>
On the `Pi` create a directory `honeytrap` in `/var/lib/` and `/var/log/`:
```bash
$   mkdir /var/lib/honeytrap
&   mkdir /var/log/honeytrap
```
Now unpack `honeytrap.deb` and install HoneyTrap on the Pi:
```bash
$   dpkg -i honeytrap.deb
$   sudo apt install -f
```
Change the owner for the directory's we created:
```bash
$   sudo chown -R honeytrap /var/lib/honeytrap
$   sudo chown -R honeytrap /var/log/honeytrap
```
<hr>
#### <mark>From here proceed on your pc/laptop</mark>
<hr>
## Step 4: Clone the Git-repository
<!-- TODO change links to offivial repo once merged in orig. repo -->
```bash
> wget https://raw.githubusercontent.com/AMKuperus/honeytrap-configs/master/HoneyTrap-RaspberryPi-tutorial/rules.v4
> wget https://raw.githubusercontent.com/AMKuperus/honeytrap-configs/master/HoneyTrap-RaspberryPi-tutorial/config.toml
```

## Step 5: Add rules.v4
The `rules.v4` is a file that holds the settings for `iptables`.
Copy the `rules.v4` to the `Pi` in `/etc/iptables/`:
```bash
>   sudo scp rules.v4 root@[PI_IP_ADDRESS]:/etc/iptables/
```
## Step 6: Add configuration.toml
The configuration.toml holds the configuration for HoneyTrap. The configuration should be stored in `/etc/` and renamed to `honeytrap.toml`. The configurationfile provided contains the `ssh-simulator` and `telnet` services. It logs activity to `console` and writes the activity to a `file`.

Copy the configuration to `/etc/` on the `Pi`:
```bash
>   sudo scp config.toml root@[PI_IP_ADDRESS]:/etc/
```
<hr>
#### <mark>From here proceed on the Pi</mark>
<hr>
Rename the configuration file:
```bash
$   mv /etc/config.toml /etc/honeytrap.toml
```
You can modify the configuration by editing the `toml`. The file provided in this tutorial does not need modifications to finish the tutorial but is is nice to now how to open the `toml`:
```bash
$   vi /etc/honeytrap.toml
```
> If you are not used to `vi` you can replace `vi` with `nano` which is a less complex editor.

## Step 7: Auto-start HoneyTrap
Enable HoneyTrap to auto-start when the `Pi` starts:
```bash
$   sudo systemctl enable honeytrap
```
Restart HoneyTrap:
```bash
$   sudo systemctl restart honeytrap
```
<hr>
#### Congratulations: You have succesfully setup HoneyTrap on a RaspberryPI.
The following steps are optional.
<hr>

## Show the logfile (optional)
The `toml` file provided contains settings to write all activity to `/var/log/honeytrap/honeytrap.log`. You can open this file to see a history, or `tail` the file to see the current activity. To tail the file:
```bash
$ tail -f /var/log/honeytrap/honeytrap.log
```
You can perform this action on the `Pi` or via `ssh`.

## Show console activity (optional)
<!-- TODO test this -->
To show the `console-activity` from HoneyTrap we have to get the log from `journalctl` send it to a temporary file and `tail` the file from there. On the `Pi` or via `ssh`:
```bash
$ journalctl -u honeytrap -f >> /tmp/tail.log & tail -f /tmp/tail.log
```

## Install ZeroTier (optional)
`ZeroTier` makes it easy to setup a secure private network for your devices. When you install `ZeroTier` on the `Pi` you can access it remotely from other devices that you give access to the `ZeroTier` network.

Follow the following steps to install `ZeroTier` on the `Pi`:

First download and execute `ZeroTier`:
```bash
$ curl -s https://install.zerotier.com/ | sudo bash
```
After a successful installation you will see the `Pi` `ZeroTier` address token:
```bash                                                 │
*** Success! You are ZeroTier address [ xxxxxxxxxx ].
```
You can add this token to your `ZeroTier-Network` with:
```bash
$ sudo zerotier-cli join [NETWORK-IDENTITY-HERE]
```
To find out the status of your network do:
```bash
$ sudo zerotier-cli status
```
To find out more about `ZeroTier` check out the [ZeroTier-website](https://www.zerotier.com/manual.shtml).

## Disable SSH (optional)
To disable `SSH` on the `Pi` run the following command:
```bash
$   sudo systemctl disable ssh && sudo systemctl stop ssh
```
