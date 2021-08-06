---
title: "How to display all schemas in a Postgres database"
date: "2021-07-29"
tags: [postgres]
---

```sql
select schema_name
from information_schema.schema;
```

