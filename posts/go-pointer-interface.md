---
title: "How to hold a pointer to a struct implementing an interface in Go"
date: "2021-03-12"
tags: [go]
---

> When you have a struct implementing an interface, a pointer to that struct implements automatically that interface too. That's why you never have `*SomeInterface` in the prototype of functions, as this wouldn't add anything to `SomeInterface`, and you don't need such a type in variable declaration (see this related question).

> An interface value isn't the value of the concrete struct (as it has a variable size, this wouldn't be possible), but it's a kind of pointer (to be more precise a pointer to the struct and a pointer to the type). Russ Cox describes it exactly here :

    Interface values are represented as a two-word pair giving a pointer to information about the type stored in the interface and a pointer to the associated data.

> This is why `Interface`, and not `*Interface` is the correct type to hold a pointer to a struct implementing Interface.

Source: https://stackoverflow.com/a/13511853/3600147

