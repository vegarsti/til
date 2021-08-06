---
title: "Using LIKE with a subquery in SQL"
date: "2021-07-29"
tags: [sql, postgres]
---

Use `LIKE` (and `ILIKE`) on an array or statement by doing `ilike any( ... )`

```sql
select * where x ilike any(
	select
		'%' || '%' || y
	from table 
)
```

This works in Postgrs, at least.
