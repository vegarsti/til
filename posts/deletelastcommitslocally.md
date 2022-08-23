---
title: "Delete last local commits"
date: "2022-08-23T13:35:09Z"
tags: [git]
---
I want to remove the last `n` commits from my local repository.
These commits have not been pushed.

```
git reset --hard HEAD~n
```

Source: https://stackoverflow.com/a/38744711/3600147

