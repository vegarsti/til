---
title: "Git: Amend first commit"
date: "2022-02-08T18:04:06Z"
tags: [git]
---

Using the `--root` flag to `git rebase`, we can also change the _first_ commit of a Git repo.
This is fairly new. Source: https://stackoverflow.com/a/2309391/3600147

```bash
$ git rebase --root --interactive
```

