---
title: "My Git aliases"
date: "2022-06-10T07:39:59Z"
tags: [git]
---

I have been aliasing a bunch of git commands using regular Bash aliases, but I decided to move it to the
Git config.

```bash
$ cat ~/.gitconfig
...
[alias]
        s = status --short
        l = log --graph --oneline --decorate
        d = diff
        dc = diff --cached
        b = branch
        bd = branch -d
        bD = branch -D
        p = pull --ff-only
        cb = checkout -b
        c = commit
        cm = commit -m
        amend = commit --amend --no-edit
        sw = switch
```
I have also aliased `g` to `git`

```bash
$ which g
g: aliased to git
```
so I can do stuff like

```bash
$ g s
?? untracked-file
$ g cb feature-branch
Switched to a new branch 'feature-branch'
```

