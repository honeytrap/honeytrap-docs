---
title: Slack
linktitle: Slack
description: Configuration for Slack channel
date: 2018-10-31
categories: [channels]
keywords: [channels]
menu:
  docs:
    parent: "channels"
    weight: 110
weight: 110
toc: true
---

## What is Slack?

`Slack` is a cloud-based set of tools and services for team-communication.

## Description

The `Slack` channel will send all events to a `Slack` channel API.

## Syntax

```bash
[channel.<you_choose>]
type="slack"
```

## Arguments in configuration file

There are `4` arguments in `Slack` channel:

 argument  | default setting | explanation | required
  ---  | --- | --- | ---
`webhook_url` |  <span style="color:red">no</span> | Set the `webhook_url` of your webhook. | <span style="color:green">yes</span>
`username` |  <span style="color:red">no</span> | Set your `username`. | <span style="color:orange">?</span>
`icon_url` | <span style="color:red">no</span> | Set the `icon_url` to use in place of the default icon. | <span style="color:red">no</span>
`icon_emoji` | <span style="color:red">no</span> | Set the `icon_emoji` to use in place of the default icon. | <span style="color:red">no</span>

## Example

```bash
[channel.slack01]
type="slack"
webhook_url="https://hooks.slack.com/services/T4M......"
icon_emoji=":ghost:"
```

## Setup Slack
To setup Slack to use as channel you need to create a `incoming webhook`.

To create a custom webhook in Slack go to `Administration`->`Manage Apps`.

From the Manage-menu select `Custom Integrations` and click on `Incoming Webhooks`.
There you can select `Add Configuration`.

Select the channel where `HoneyTrap` should post to and select `Add Incoming WebHooks integration`.

Now you can copy the webhook and paste this in your `toml`.

>Be aware when on a free plan `Slack` limits the amount of customisations you are allowed to have.

**The result should look something like this:**
![][1]
<!--![](/channels/images/channel_slack.png)-->

## Availability

 Linux   | MacOS
  ---  | ---
  <p style="color:green">yes</p>  | <p style="color:green">yes</p>

  [1]: /images/channels/channel_slack.png
