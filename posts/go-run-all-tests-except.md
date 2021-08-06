---
title: "How to run all tests except those matching a pattern"
date: "2021-03-02"
tags: [go]
---

Run all tests except those called `TestSelect...`:

```
go test -run "Test[^Select]"
```
