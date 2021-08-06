---
title: "Find blocked queries in Postgres"
date: "2021-07-30"
tags: [postgres]
---

```sql
select pid, 
       usename, 
       pg_blocking_pids(pid) as blocked_by, 
       query as blocked_query
from pg_stat_activity
where cardinality(pg_blocking_pids(pid)) > 0;
```

Source: https://gist.github.com/rgreenjr/3637525
