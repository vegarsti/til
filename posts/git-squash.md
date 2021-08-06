---
title: "Squash commits in git"
date: "2020-11-12"
tags: [git]
---

Squash last 3 commits into 1:

```sh
git rebase -i HEAD~3
```

and then `pick` the first one, and `squash` the others.
