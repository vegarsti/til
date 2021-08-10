---
title: "Union in SQL"
date: "2021-08-10T06:09:33Z"
tags: [sql]
---
To combine the result of two `SELECT` statements, use `UNION`.

- The number and the order of the columns in the select list of both queries must be the same.
- The data types must be compatible.
- Duplicate rows will be dropped.

```sql
SELECT select_list_1
FROM table_expresssion_1
UNION
SELECT select_list_2
FROM table_expression_2
```

Source: https://www.postgresqltutorial.com/postgresql-union/

Examples
```sql
select 1 as n union select 2 as n;
```

```sh
 n
---
 1
 2
```

```sql
select 1 as n union select 'a' as n;
```

```sh
ERROR:  22P02: invalid input syntax for integer: "a"
LINE 1: select 1 as n union select 'a' as n;
                                   ^
```