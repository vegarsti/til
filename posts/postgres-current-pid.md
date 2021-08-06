---
title: "Current PID in Postgres"
date: "2021-06-09"
tags: [postgres]
---

This returns the PID of the current psql session:

```sql
select pg_backend_pid()
```
