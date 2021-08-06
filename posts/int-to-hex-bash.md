---
title: "Integer to hexadecimal in bash"
date: "2021-05-26"
tags: [bash]
---

Create a function `hex` which works as

```sh
$ hex 1
0x1
```

and

```sh
$ echo 1 | hex
0x1
```

```sh
function hex {
if [ -t 0 ]; then
		if [ $# -eq 1 ]; then
	    	printf '0x%x\n' $1
	    	return
		fi
	else
		while read -r line ; do
			printf '0x%x\n' $line
		done
		return
	fi
	echo "usage: hex n"
	return 1
}
```

(Note that this uses the pattern from [this TIL post](../bash-stdin-or-interactive).)
