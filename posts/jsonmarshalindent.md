---
title: "Pretty print JSON with json.MarshalIndent"
date: "2021-09-17T12:27:28Z"
tags: [go]
---

Normally I use `json.Marshal` when I have some Go data that I want to encode as a string.

```go
bytes, err := json.Marshal(data)
```

But there's also `json.MarshalIndent` which will use newlines and indent the output.

```go
bytes, err := json.MarshalIndent(data, prefix, indent)
```

For example,

```go
bytes, err := json.MarshalIndent(map[string]int{"a": 1,"b": 2}, "", " ")
```

produces

```json
{
  "a": 1,
  "b": 2
}
```


[Example from docs](https://pkg.go.dev/encoding/json#example-MarshalIndent).

