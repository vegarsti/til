---
title: "Listing large files"
date: "2022-12-22T12:49:06Z"
tags: [bash]
---
I suddenly had no empty space on my Mac's disk.
[This StackOverflow answer]()https://apple.stackexchange.com/a/278805/77352 had the following command, which will list all files and folders of size 1G and above.

```
du -sh *  | grep -E "\dG"
```

