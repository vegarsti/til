---
title: "Lists files matching pattern in grep, ripgrep with `-l`"
date: "2022-01-23T11:33:58Z"
tags: [bash]
---

By default, grep and [ripgrep](https://github.com/BurntSushi/ripgrep) prints the file and the line at which the search pattern matched.
I did a search today where one of the files that matched was one very long line, so I needed this option.

```bash
$ rg til
posts/http-content-headers.md
37:	server.Shutdown(context.Background()) // blocks until all active connections become idle

posts/http-permanent-redirect.md
34:	server.Shutdown(context.Background()) // blocks until all active connections become idle

scripts/til.sh
7:#   $ ./til_post about Alfred's snippet collections
...:
$ rg -l til
rg -l til
install.sh
scripts/til.sh
README.md
hugosite/config.toml
hugosite/themes/etch/exampleSite/content/about/index.md
hugosite/themes/etch/exampleSite/content/posts/placeholder-text.md
posts/http-permanent-redirect.md
posts/how-to-create-a-symbolic-link-to-a-directory.md
posts/macos-date-iso8601.md
posts/bash-until.md
posts/http-content-headers.md
posts/macos-keyboard-rate.md
```

