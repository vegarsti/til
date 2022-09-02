---
title: "Stash Git changes, but keep staged changes"
date: "2022-09-02T08:07:25Z"
tags: [git]
---

Today I had been working on a branch, and wanted to separate out one set of changes into a separate branch.
To do this, I staged the changes I wanted to separate out, and then ran

```
$ git stash --keep-index
```

This stashes all entries, but keeps the staged code.
This meant I could do

```
$ git checkout main
$ git checkout other-branch
$ git add ...
$ git commit ...
$ git checkout previous-branch
```

and then resume work on `previous-branch`.!

Source: https://stackoverflow.com/a/32951373/3600147

