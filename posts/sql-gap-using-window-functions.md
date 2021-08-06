---
title: "Find gap in continuous numbers in SQL using window functions"
date: "2021-05-26"
tags: [postgres, sql]
---

Find gap in (what's supposed to be) a continuous range

```sql
select
	number + 1 as gap_start,
	next_nr - 1 as gap_end from (
		select
			number,
			lead(number) over (order by number) as next_nr
		from bsc.blocks
	) nr
where nr.number + 1 <> nr.next_nr;
```
