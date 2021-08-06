---
title: "How to create a symbolic link to a directory"
date: "2021-08-05T12:10:00Z"
tags: [bash]
---

I want to create a symbolic link from one directory to another.
In particular I want `til/hugosite/content/posts`, which Hugo needs to generate this static webpage, to reflect changes in `til/posts`, which is where I keep these TIL posts.

[This website](https://kb.iu.edu/d/abbe) says that the syntax is

```sh
ln -s source target
```

I tried creating a link, but got an error saying "too many levels of symbolic links."
[This Unix StackExchange post](https://unix.stackexchange.com/questions/141436/too-many-levels-of-symbolic-links) could tell me that 

> symlinks are relative to the parent directory of the link, not of the current directory of the `ln` process.

I first successfully created a symbolic link using absolute paths,
```sh
ln -s ~/dev/til/posts ~/dev/til/hugosite/content/posts
```

but that broke when I deployed the site to Netlify.
The relative link solution to it is

```sh
cd ~/dev/
ln -s ../../posts til/hugosite/content/posts
```

We can read this as:
From the parent directory of `til/hugosite/content/posts`, which is `til/hugosite/content`, we go up two directories to `til`, and then to `posts`, ending up at `til/posts`.
