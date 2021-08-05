---
title: "How to create a symbolic link to a directory"
date: "2021-08-05T12:10:00Z"
tags: []
---

To create a symbolic link from one directory to another, like from `til/posts` -- which has the original content -- to `til/hugosite/content/posts`, do

```
ln -s ~/dev/til/posts ~/dev/til/hugosite/content/posts
```

Source: https://unix.stackexchange.com/questions/141436/too-many-levels-of-symbolic-links

