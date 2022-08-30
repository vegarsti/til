---
title: "Combine PDFs with Ghostscript"
date: "2022-08-08T07:33:14Z"
tags: [macos, bash]
---

To combine PDFs in the terminal, use [Ghostscript](https://www.ghostscript.com/):

```
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf source1.pdf source2.pdf source3.pdf
```

Taken from this StackExchange answer: https://apple.stackexchange.com/a/293198/77352

