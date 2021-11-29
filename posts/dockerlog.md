---
title: "View log of Docker container"
date: "2021-11-29T12:39:54Z"
tags: [docker]
---

Today I tried to start a container and only got the container ID as output:

```sh
$ docker run ...
a0a55f02da5d5b1f6112c791bfff1da1b51c7b60b38b1bae57d5d9b6378d51f9
```

The container is not running.

```sh
$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

Turns out this means it died, since the container exited and logged its ID as output.
To view the logs of this container, use the `docker logs` command:

```sh
docker logs a0a55f02da5d5b1f6112c791bfff1da1b51c7b60b38b1bae57d5d9b6378d51f9
```

