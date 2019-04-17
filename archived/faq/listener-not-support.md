---
title: Listener not support
linktitle: Listener not support
date: 2018-02-01
menu:
  docs:
    parent: "faq"
    weight: 20
weight: 20
---
After starting HoneyTrap, the following error appears:

```bash
Listener <...> not support on platform
```
----------

The listener you configured in your [configuration file](/manuals/basic-configuration/) is not available on your platform.


You can find the list of the listeners [in the documentation](/listeners/#listeners-available) with their availability regarding the platforms.  
You can also check those available on your platform by starting HoneyTrap with the flag `--list-listeners`.
