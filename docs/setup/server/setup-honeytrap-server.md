---
title: Docker Compose (HoneyTrap Server)
---

{% capture overview %}
Follow these steps in order to setup HoneyTrap Server.
{% endcapture %}

{% capture steps %}

## Pull Docker images

Make sure you are running the newest version:

```bash
docker-compose -f ./docker-compose-honeytrap.yml pull
```

## Start the HoneyTrap Server

Now you can start the Docker Compose script:

```bash
docker-compose -f ./docker-compose-honeytrap.yml up
```

{% endcapture %}

{% capture whatsnext %}
* Now you are ready to start the [HoneyTrap Agent](/docs/setup/server/run-agent).
{% endcapture %}

{% include templates/new_task.md %}
