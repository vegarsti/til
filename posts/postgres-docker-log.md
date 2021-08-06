---
title: "Log everything from Postgres docker image"
date: "2021-02-09"
tags: [postgres, docker]
---

Use this `command` in `docker-compose.yml`:

```sh
command: ["postgres", "-c", "log_statement=all"]
```
