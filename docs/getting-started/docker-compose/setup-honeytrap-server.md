---
title: Docker-compose (Honeytrap Server)
---

#### Setup Honeytrap Server

Make sure you are running the newest version:

```bash
docker-compose -f ./docker-compose-honeytrap.yml pull
```

Note: If you're running MacOS, make sure to share ```/data/elasticsearch``` in Docker preferences.

Now you can start the Docker Compose script:

```bash
docker-compose -f ./docker-compose-honeytrap.yml up
```

Now you are ready to start the [Honeytrap Agent](/docs/getting-started/docker-compose/run-agent).
