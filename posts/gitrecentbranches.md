---
title: "Recent git branches"
date: "2022-02-22T08:21:18Z"
tags: [git, bash]
---
The following command outputs local branch names ordered by commit time in descending order, so most recent first.

```bash
$ git for-each-ref --sort=-committerdate refs/heads/ | awk '{print $3}' | cut -c 12-
```

The `awk` command prints the third field which is the actual branch name, prefixed with `refs/heads`, and the `cut` command strips the prefix.

