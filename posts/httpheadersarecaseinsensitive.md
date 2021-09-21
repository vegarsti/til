---
title: "HTTP headers are case insensitive"
date: "2021-09-21T19:29:09Z"
tags: [http]
---
[This StackOverflow answer](https://stackoverflow.com/a/5259004/3600147) cites the RFC which defines headers.

> Each header field consists of a name followed by a colon (":") and the field value. Field names are case-insensitive.

This means that if I send an HTTP request with the header `"accept: text/html"` (note the lowercase `A`), it will be translated to `"Accept: text/html"`.
In practical terms, this means in my Go code I must do `Headers["Accept"]`, where the `Headers` map is an attribute on a [`http.Request`](https://pkg.go.dev/net/http#Request).

Strangely, AWS API Gateway seems to do it the other way around, where "normal" headers such as `Accept` are lowercased into `accept`.
I discovered this while trying to use the header in a Lambda function.

