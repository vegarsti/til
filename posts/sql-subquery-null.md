---
title: "Subquery returns null in SQL"
date: "2021-02-09"
tags: [sql]
---

```sql
select 1 as x, (select 1 limit 0) as y;
 x | y
---+---
 1 | null
```
