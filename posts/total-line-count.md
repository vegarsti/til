---
title: "Total line count of files with certain file ending"
date: "2021-02-25"
tags: [bash]
---

Number of Go code lines

```
wc -l **/*.go | awk '{sum += $1} END {print sum}'
```
