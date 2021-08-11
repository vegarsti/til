---
title: "Using regex capture groups to replace text in Go"
date: "2021-08-11T13:41:16Z"
tags: [go]
---

In Go, capture groups in Regexes must be denoted by `(?P<name>)`, where `name` will be the name of the capture group.
Capture groups can be referenced as `$N`.
For example, suppose we have a string consisting of `name:age` tuples, here's how we could transform that to `age:name` tuples.

```go
package main

import (
	"fmt"
	"regexp"
)

func main() {
	re := regexp.MustCompile("(?P<name>[a-zA-Z]+):(?P<age>[0-9]+)")
	swapped := re.ReplaceAllString("vegard:28 a:10", "$2:$1")
	fmt.Println(swapped)
}
```


[Go playground link](https://play.golang.org/p/J9x7AbRZAYp).

