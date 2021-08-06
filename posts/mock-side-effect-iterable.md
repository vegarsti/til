---
title: "mock.side_effect can take an iterable in Python"
date: "2019-11-29"
tags: [python]
---

```python
m = MagicMock(side_effect=[1, 2])
m() # 1
m() # 2
```
