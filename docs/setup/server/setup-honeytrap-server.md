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
docker-compose -f ./docker-compose-server.yml pull
```

## Start the HoneyTrap Server

Now you can start the Docker Compose script:

```bash
docker-compose -f ./docker-compose-server.yml up
```

**NOTE:** If the kibana container can't be started, execute the following command again: `chown -R 1000:1000 /data/elasticsearch/`. Try executing the docker compose command stated above again.
{: .note}

{% endcapture %}

{% capture whatsnext %}
* Now you are ready to start the [HoneyTrap Agent](/docs/setup/server/run-agent).
{% endcapture %}

{% include templates/task.md %}
