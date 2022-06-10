---
title: "My Git aliases"
date: "2022-06-10T07:39:59Z"
tags: [git]
---

I have been aliasing a bunch of git commands using regular Bash aliases, but I decided to move it to the
Git config.
This gives me all the auto complete of the spelled out Git commands!

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
$ g sw main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
$ g bd <TAB>
$ g bd feature-branch
Deleted branch feature-branch (was 29b5f11).
```

