---
title: "The Permanent Redirect HTTP header"
date: "2021-02-03"
tags: [http, go]
---

A 301 Permanent Redirect with a Location header will automatically be followed by browsers.
Example Go code follows:

```go
package main

import (
	"context"
	"log"
	"net/http"
	"os"
)

var interruptChannel = make(chan os.Signal, 1)

func redirect(w http.ResponseWriter, req *http.Request) {
	w.Header().Set("Location", "https://google.com")
	w.WriteHeader(http.StatusMovedPermanently)
}

func main() {
	http.HandleFunc("/redirect", redirect)
	server := http.Server{Addr: ":8080"}
	http.ListenAndServe(":8080", nil)
	go server.ListenAndServe()
	<-interruptChannel
	log.Println("Shutting down server")
	server.Shutdown(context.Background()) // blocks until all active connections become idle
}
```
