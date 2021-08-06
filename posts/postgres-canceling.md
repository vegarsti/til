---
title: "Canceling Postgres queries"
date: "2021-05-05"
tags: [postgres]
---

```sql
-- cancel (idle won't be removed)
select pg_cancel_backend(pid);
-- terminate
select pg_terminate_backend(pid);
```
