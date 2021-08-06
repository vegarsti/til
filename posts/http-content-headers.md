---
title: "Content-Type and Content-Disposition HTTP headers"
date: "2021-02-03"
tags: [http, go]
---

The Content-Type and Content-Disposition headers can be used to tell a browser to download a file instead of displaying it.
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

func content(w http.ResponseWriter, req *http.Request) {
	w.Header().Set("Content-Type", "text/csv; charset=UTF-8")
	w.Header().Set("Content-Disposition", "attachment")
	w.Write([]byte(`a,b
1,2
`))
}

func main() {
	http.HandleFunc("/content", content)
	server := http.Server{Addr: ":8080"}
	http.ListenAndServe(":8080", nil)
	go server.ListenAndServe()
	<-interruptChannel
	log.Println("Shutting down server")
	server.Shutdown(context.Background()) // blocks until all active connections become idle
}
```
