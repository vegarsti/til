---
title: "Until in Bash"
date: "2021-01-26"
tags: [bash]
---

Bash has an `until` loop:

```bash
until [CONDITION]
do
  [COMMANDS]
done
```

Used this in a Makefile to wait for Postgres to start up:

```sh
test:
	docker-compose up -V -d postgres
	until pg_isready -h localhost; do \
		sleep 0.1; \
	done
	go test ./...
```

Also ended up writing a [blog post](https://www.vegardstikbakke.com/dependencies/) about this.
