---
title: Docker Compose (HoneyTrap Sensor)
---

{% capture overview %}
Follow these steps in order to setup HoneyTrap Server.
{% endcapture %}

{% capture steps %}

## Pull docker images

Make sure you are running the newest version:

```bash
docker-compose -f ./docker-compose-sensor.yml pull
```

## Start the HoneyTrap Server

Now you can start the Docker Compose script:

```bash
docker-compose -f ./docker-compose-sensor.yml up
```

{% endcapture %}


{% capture whatsnext %}
* Run the [HoneyTrap Sensor](/docs/setup/sensor/run-sensor)
{% endcapture %}

{% include templates/task.md %}
