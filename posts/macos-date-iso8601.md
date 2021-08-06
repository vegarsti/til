---
title: "How to generate an ISO8601 date using date on macOS"
date: "2021-08-06T12:10:00Z"
tags: [bash]
---

The Linux `date` utility takes an `-I` or `--iso-8601` flag, but the macOS one doesn't.
The way to do it on macOS is

```sh
date -u +"%Y-%m-%dT%H:%M:%SZ"
```

Source: https://stackoverflow.com/a/7216394/3600147
