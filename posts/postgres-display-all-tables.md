---
title: "How to display all tables in a Postgres database"
date: "2021-07-29"
tags: [postgres]
---

```sql
select * from pg_tables;
```

Or all tables with number of rows

```sql
select n.nspname as table_schema,
       c.relname as table_name,
       c.reltuples as rows
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where c.relkind = 'r'
      and n.nspname not in ('information_schema','pg_catalog')
order by c.reltuples desc;
```
