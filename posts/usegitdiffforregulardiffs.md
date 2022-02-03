---
title: "Use git diff --no-index for regular diffs"
date: "2022-02-03T20:23:16Z"
tags: [bash, gi]
---

If I have two files that I want to compare, I use `diff file1 file2`, but that doesn't give the nice side-by-side view that Git does.
Turns out, git supports the same thing, with the `--no-index` option.

```bash
$ git diff --no-index file1 file2
```

