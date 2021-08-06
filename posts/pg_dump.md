---
title: "pg_dump"
date: "2021-07-29"
tags: [postgres]
---

```sh 
pg_dump -h localhost -p 5432 -U postgres -d db > dump.sql
```

dumps the entire `db` database on localhost to `dump.sql`.
