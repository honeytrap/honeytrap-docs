---
title: Docker Compose (Honeytrap Sensor)
---

{% capture overview %}
Follow these steps in order to setup Honeytrap Server.
{% endcapture %}

{% capture steps %}

## Pull docker images

Make sure you are running the newest version:

```bash
docker-compose -f ./docker-compose-sensor.yml pull
```

## Start the Honeytrap Server

Now you can start the Docker Compose script:

```bash
docker-compose -f ./docker-compose-sensor.yml up
```

{% endcapture %}


{% capture whatsnext %}
* Run the [Honeytrap Sensor](/docs/setup/sensor/run-sensor)
{% endcapture %}

{% include templates/new_task.md %}
