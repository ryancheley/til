Remote justfile

TLDR: you can have remote `justfile` to help keep `justfile`s DRY. 

## Discovery

While reading the just book I came across this awesome tip

## Explanation

Remote files allow you to keep your `justfile`s DRY. You can include a `mod` or `import` so that duplication isn't required

## Example

Directly taken from the Just Programmer's Manual

```
import? 'foo.just'

fetch:
  curl https://raw.githubusercontent.com/casey/just/master/justfile > foo.just

```

## Why It Matters

just is an amazingly helpful project and knowing that you can have these remote `justfiles` to assist in keeping your `justfile`s DRY. 

## Source
The [Just Programmer's Manual](https://just.systems/man/en/remote-justfiles.html)