---
title: "Spark SQL array functions"
date: "2022-01-05T10:30:51Z"
tags: [sql, spark]
---

Spark SQL has [a bunch of built-in functions](https://spark.apache.org/docs/latest/api/sql/index.html), and many of them are geared towards arrays.
For example, [`filter`](https://spark.apache.org/docs/latest/api/sql/index.html#filter) which filters an array using a predicate, and [`transform`](https://spark.apache.org/docs/latest/api/sql/index.html#transform) which maps an array using a function.
Both the predicate and the function here use lambda syntax.

```sql
> SELECT filter(array(1, 2, 3), x -> x % 2 == 1);
 [1,3]
> SELECT filter(array(0, 2, 3), (x, i) -> x > i);
 [2,3]
> SELECT filter(array(0, null, 2, 3, null), x -> x IS NOT NULL);
 [0,2,3]

> SELECT transform(array(1, 2, 3), x -> x + 1);
 [2,3,4]
> SELECT transform(array(1, 2, 3), (x, i) -> x + i);
 [1,3,5]
```
