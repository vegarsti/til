---
title: "How to grep twice in one pass"
date: "2021-06-21"
tags: [bash]
---

I had a big output that I wanted to grep for two things at the same time, and I wanted them to come in order.
The solution, from [this StackOverflow answer with an excellent description](https://unix.stackexchange.com/a/560102/382971) is:

```
$ echo "something\nnot" | tee >(grep "some" >&2) | (sleep 0.05; cat) | grep not
something
not
```

We can use `tee` to send the output to standard out and to a file.
In this case, we send it to the "file" that is the process `grep "some" >&2`
Since we are not piping stderr through, redirecting the output to stderr is an easy way of displaying it in our terminal, i.e. we add >&2.
