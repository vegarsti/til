---
title: "Crosstabview in Postgres"
date: "2021-08-03"
tags: [postgres]
---

```sh
localhost postgres@dune=# select date_trunc('month', now())::date as mm, true, 1;
     mm     | bool | ?column?
------------+------+----------
 2021-08-01 | t    |        1

localhost postgres@dune=# \crosstabview mm
     mm     | t
------------+---
 2021-08-01 | 1
```

https://wiki.postgresql.org/wiki/Crosstabview
