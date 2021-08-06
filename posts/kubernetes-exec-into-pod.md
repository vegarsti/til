---
title: "Execute command on Kubernetes pod"
date: "2021-06-24"
tags: [kubernetes, bash]
---

For example, printing the pgbouncer config file on a pgbouncer pod.

```sh
kubectl exec --stdin --tty <POD> -- cat /etc/pgbouncer/pgbouncer.ini
```

