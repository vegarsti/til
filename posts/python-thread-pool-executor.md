---
title: "ThreadPoolExecutor in Python"
date: "2019-11-05"
tags: [python]
---

I wanted to wrap a `for` loop of some costly calls in a thread pool.

The single thread code was

```python
for version in self._all_versions(project_id, document_id, doc_type=DocType.PARSED):
     self.delete_parsed(project_id, document_id, content_version=version, ignore_not_found=True)
```

then just import `concurrent.futures.ThreadPoolExecutor`, and even the self code here works

```python
futures: List[Future] = []
with ThreadPoolExecutor(max_workers=4) as e:
    for version in self._all_versions(project_id, document_id, doc_type=DocType.PARSED):
        future = e.submit(
            fn=self.delete_parsed, project_id=project_id, document_id=document_id, content_version=version
        )
        futures.append(future)
for future in futures:
    future.result()
```
