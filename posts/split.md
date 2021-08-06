---
title: "Split a file in bash"
date: "2021-06-11"
tags: [bash]
---

`split` splits a file into chunks.
To split `file.txt` into files of 1 line with names starting with `prefix_`:

```
$ split -l 1 file.txt prefix_
```
