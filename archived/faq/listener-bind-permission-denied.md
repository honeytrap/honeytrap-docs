---
title: Listener bind permission denied
linktitle: Listener bind permission denied
date: 2018-10-31
menu:
  docs:
    parent: "faq"
    weight: 20
weight: 20
---
After starting HoneyTrap, the following error appears:

```bash
Error starting listener: listen tcp :80: bind: permission denied
```

----------

The port you configured in your [configuration file](/manuals/basic-configuration/) may be a `Privileged Port`. You can only use them when you start HoneyTrap as root.
