---
title: "`echo $?` returns the exit code of the previous command"
date: "2019-12-02"
tags: [bash]
---

```sh
$ false
$ echo $?
1
$ echo "hello"
$ echo $?
0
```
