---
title: "Selecting FROM multiple columns gives cartesian product, same as cross and inner join"
date: "2021-08-18T17:44:41Z"
tags: [postgres, sql]
---

It's possible to select from multiple tables in the `FROM` clause, e.g.

```sql
create table foo (a int);
create table bar (b int);
insert into foo values (1), (2);
insert into bar values (3, 4);
select a, b from foo, bar;
```

This will produce the cartesian product, i.e. for each row in `foo` combine with each row in `bar`.

```
 a | b
---+---
 1 | 3
 1 | 4
 2 | 3
 2 | 4
```

Turns out this is equivalent to `CROSS JOIN` and `INNER JOIN on true` in Postgres.

```sql
select a, b from foo cross join bar;
```

```sql
select a, b from foo inner join bar on true;
```

> CROSS JOIN and INNER JOIN produce a simple Cartesian product, the same result as you get from listing the two tables at the top level of FROM, but restricted by the join condition (if any). CROSS JOIN is equivalent to INNER JOIN ON (TRUE), that is, no rows are removed by qualification. These join types are just a notational convenience, since they do nothing you couldn't do with plain FROM and WHERE.

from https://www.postgresql.org/docs/9.5/sql-select.html

