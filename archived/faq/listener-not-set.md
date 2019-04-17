---
title: Listener not set
linktitle: Listener not set
date: 2018-02-01
menu:
  docs:
    parent: "faq"
    weight: 20
weight: 20
---
After starting HoneyTrap, the following error appears:

```bash
Listener not set
```
----------

You didn't configure a listener in your [configuration file](/manuals/basic-configuration/).

At least one listener is needed to start HoneyTrap and only one can be specified.

You can find the list of the listeners [in the documentation](/listeners/#listeners-available).  
You can also check those available on your platform by starting HoneyTrap with the flag `--list-listeners`.
