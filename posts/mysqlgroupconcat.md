---
title: "MySQL group_concat"
date: "2021-12-21T09:44:06Z"
tags: [mysql]
---

Suppose we use a database without JSON support.
We can create a table containing some reference and keys and values.

```sql
create table keys_values (reference text, k text, v text);
```

We insert some JSON data into this table using `json_i` as key.

```sql
insert into keys_values values ('something', 'json_0', '{"id":1,"blob":');
insert into keys_values values ('something', 'json_1', '"aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d"');
insert into keys_values values ('something', 'json_2', '}');
insert into keys_values values ('something_else', 'json_0', '{"id":2,"blob":null}');
```

```bash
mysql> select * from keys_values;
+----------------+--------+--------------------------------------------+
| reference      | k      | v                                          |
+----------------+--------+--------------------------------------------+
| something      | json_0 | {"id":1,"blob":                            |
| something      | json_1 | "aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d" |
| something      | json_2 | }                                          |
| something_else | json_0 | {"id":2,"blob":null}                       |
+----------------+--------+--------------------------------------------+
```

To reconstruct the JSON, we can use `group_concat`.

```sql
select reference, group_concat(v order by k separator '') as json
from keys_values
group by reference;
```

```bash
+----------------+------------------------------------------------------------+
| reference      | json                                                       |
+----------------+------------------------------------------------------------+
| something      | {"id":1,"blob":"aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d"} |
| something_else | {"id":2,"blob":null}                                       |
+----------------+------------------------------------------------------------+
```

