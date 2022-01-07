---
title: "Generate git stats"
date: "2022-01-05T10:33:17Z"
tags: [git]
---

Jamie Brandon's [2021 post](https://www.scattered-thoughts.net/writing/2021/) had some neat oneliner stats of lines of code changed in a given repo.
He [replied to me on Twitter](https://twitter.com/sc13ts/status/1478521427984744448) with how to do this.
The below might use zsh specific syntax for the subshell.

```sh
$git diff --shortstat $(git log --after 2020-12-30 --format=oneline | cut -d' ' -f 1 | tail -n 1)
 293 files changed, 24090 insertions(+), 1 deletion(-)
```
