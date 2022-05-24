---
title: "Restoring a deleted file using Git"
date: "2022-05-24T10:53:47Z"
tags: [git]
---
Suppose we deleted a file by mistake.
To recover the file, we can do

```bash
$ git checkout path
```

Now suppose we hadn't noticed and the deletion has been staged in Git.
To recover the file, we can do

```bash
$ git checkout HEAD path
```

Suppose even worse, that we managed to commit this deletion.
Now we can bring it back by doing

```bash
$ git checkout HEAD~1 path
```

