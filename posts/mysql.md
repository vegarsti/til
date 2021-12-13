---
title: "Use MySQL command line client to connect to a MySQL instance"
date: "2021-12-13T06:22:45Z"
tags: [bash]
---

Assume we have a MySQL database running on localhost.
We have a user called `user`, and a database called `test`.

Here's how to use the [command line client](https://dev.mysql.com/doc/refman/8.0/en/mysql-command-options.html) to connect to that database.

```bash
mysql --password --user user --database test --host 127.0.0.1 --port 3306
```

The `--password` prompts for the password to `--user`.
The default MySQL port is 3306, so we can elide the `--port`.
We can also use undocumented short options, and it becomes this:

```bash
mysql -p -u test --database test -h 127.0.0.1
```

