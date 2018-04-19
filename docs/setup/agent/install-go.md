---
title: Install Go
---

{% capture overview %}

This page describes the steps necessary to install go.

{% endcapture %}


{% capture steps %}

## Downloading Go

You can download the original installation files by navigating to the [official download page](https://golang.org/dl/). 

The system requirements to install Go may be found [here](https://golang.org/doc/install#requirements).

## Installing Go

Installing Go is as easy as downloading and extracting a file. Here are some operating specific installation guides.

### Linux and Mac OS

```
$ cd /usr/local
$ wget https://storage.googleapis.com/golang/go1.10.linux-amd64.tar.gz
$ tar vxf go1.10.linux-amd64.tar.gz
```

Another way of installing Go for Mac OS is by installing the provided [installation package](https://golang.org/dl/#featured).

### FreeBSD

```
$ cd /usr/local
$ wget https://storage.googleapis.com/golang/go1.10.freebsd-amd64.tar.gz
$ tar vxf go1.10.freebsd-amd64.tar.gz
```

### Windows

The easiest way to install Go for Windows is by executing the [installation package](https://golang.org/dl/#featured). By default, the Go distribution will be installed in `c:\Go`.

Another way of installing Go for Windows, is by extracting the provided [x64](https://golang.org/dl/#stable) or [x84](https://golang.org/dl/#stable) zip file to a directory (for example `c:\Go`). When installing Go to another directory, make sure to set the GOROOT environment variable to the chosen path. Also add the `bin` subdirectory of your Go root (for example, `c:\Go\bin`) to your PATH environment variable.

{% endcapture %}


{% capture whatsnext %}

* After installing Go, make sure to compile/install the Honeytrap Agent, as explained [here](/docs/setup/agent/compile-honeytrap-agent/).

{% endcapture %}

{% include templates/new_task.md %}
