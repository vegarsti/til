---
title: "Copy table definition in Postgres"
date: "2021-07-21"
tags: [postgres, sql]
---

```sql
CREATE TABLE x AS (SELECT * FROM other_table);
```

will create a new table `x` with the same format as `other_table`, and copy all rows.

Alternatively, to create an empty table, do

```sql
CREATE TABLE x AS (SELECT * FROM other_table) WITH NO DATA;
```

This is useful to do a quick backup of a table to another table!
