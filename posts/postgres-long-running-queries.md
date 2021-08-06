---
title: "Viewing long running queries in Postgres"
date: "2021-05-05"
tags: [postgres]
---

```sql
SELECT
	usename,
	pid,
	now() - pg_stat_activity.query_start AS duration,
	query,
	state
FROM pg_stat_activity
WHERE (now() - pg_stat_activity.query_start) > interval '5 minutes'
ORDER BY duration
```
