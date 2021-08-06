---
title: "Changing the keyboard repeat rate on macOS"
date: "2021-02-24"
tags: [macos]
---

I knew about Settings: `System Preferences » Keyboard » Key Repeat/Delay Until Repeat`

But it's possible to make it even faster:

```sh
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```

Source: https://apple.stackexchange.com/a/83923
