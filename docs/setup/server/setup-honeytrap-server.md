---
title: Docker Compose (Honeytrap Server)
---

{% capture overview %}
Follow these steps in order to setup Honeytrap Server.
{% endcapture %}

{% capture steps %}

## Pull Docker images

Make sure you are running the newest version:

```bash
docker-compose -f ./docker-compose-honeytrap.yml pull
```

## Start the Honeytrap Server

Now you can start the Docker Compose script:

```bash
docker-compose -f ./docker-compose-honeytrap.yml up
```

{% endcapture %}

{% capture whatsnext %}
* Now you are ready to start the [Honeytrap Agent](/docs/setup/server/run-agent).
{% endcapture %}

{% include templates/new_task.md %}
