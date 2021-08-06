---
title: "Bash pattern to read from standard input or interactively in same program"
date: "2021-06-25"
tags: [bash]
---

I wanted a pattern to create programs `program` that can be used both interactively, or separately, as 

```sh
$ program a b c
```

and as reading from standard input,

```sh
$ echo "some output" | program
```

The pattern is

```sh
!/bin/sh
if [ -t 0 ]; then
    echo running interactively
else
    while read -r line ; do
        echo $line
    done
fi
```

from https://stackoverflow.com/a/2456870/3600147
