---
title: "String line count in Postgres"
date: "2023-06-30T07:01:41Z"
tags: [sql]
---

ChatGPT taught me how to count lines of a string cpolumn in Postgres:

```
SELECT id, COUNT(*) AS line_count
FROM (
  SELECT id, regexp_split_to_table(your_column, E'\\r?\\n') AS lines
  FROM your_table
) AS subquery
GROUP BY id;
```

