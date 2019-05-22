---
title: Contribute to the HoneyTrap Docs
linktitle: Contribute to the documentation
description: Documentation is an integral part of any open source project. The HoneyTrap docs are as much a work in progress as the source it attempts to cover.
date: 2017-02-01
categories: [contribute]
menu:
  docs:
    parent: "contribute"
    weight: 20
weight: 20
sections_weight: 20
draft: false
aliases: [/contribute/docs/]
toc: true
---
## Contributing to HoneyTrap Documentation

**First off, thanks for taking the time to contribute!**

The following is a set of guidelines for contributing to `HoneyTrap Documentation`.
These are just guidelines, not rules. Use your best judgment, and feel free to propose changes to this document in a pull request.

## Contributing to Documentation

There are 2 ways to work on the `HoneyTrap Documentation`. You can `edit the markdown files` or you can work with Hugo.

When `working with Hugo` you can run the documentation on your local device and see the improvements you make directly.

When working on the markdown directly you will not be able to see the changes directly, however it is faster to edit the documentation. This is the fastest and easiest way to work on the documentation. When working with the markdown you only need step 2 from the instructions below.

You will find the markdown files containing all the documentation in `/honeytrap-docs/content`.

## Working with Hugo

### Step 1: Install Hugo

`Homebrew`, a package manager for `macOS`,  can be installed from [brew.sh](https://brew.sh/). See [install](https://gohugo.io/getting-started/installing/) if you are running Windows etc.


```bash
brew install hugo
```

To verify your new install:

```bash
hugo version
```


### Step 2: Clone this repository

```bash
git clone https://github.com/honeytrap/honeytrap-docs.git
```


### Step 3: Build this documentation locally

In the directory where you cloned the repository:

```bash
hugo server
```

Go to http://localhost:1313

When you make changes to the content Hugo will automatically renew the pages.


### Reporting Documentation Issues

honeytrap.io uses GitHub issues to track documentation issues and requests. If you see a documentation issue, submit an issue using the following steps:

1. Check the [honeytrap.io issues list](https://github.com/honeytrap/honeytrap-docs/issues) as you might find out the issue is a duplicate.
2. Use the [included template for every new issue](https://github.com/honeytrap/honeytrap-docs/issues/new).  When you create a bug report, include as many details as possible and include suggested fixes to the issue.

Note that code issues should be filed against the main HoneyTrap repository, while documentation issues should go in the HoneyTrap-docs repository.

### Submitting Documentation Pull Requests

After fixing issues or just improving the HoneyTrap Documentation create a pull request and explain all fixes and improvements.
