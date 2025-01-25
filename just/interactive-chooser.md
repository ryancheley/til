Interactive Chooser

TLDR: just (in conjunction with `fzf` will allow you to invoke a chooser to select the `just` recipe to run)

## Discovery

While reading the just book I came across this awesome tip

## Explanation

running `just --choose` will invoke `fzf` and a selector to allow you to search and select a recipe

You do need to have `fzf` installed. If you use a mac and get an error like this

```
error: Chooser `fzf --multi --preview 'just --unstable --color always --justfile "path/to/justfile" --show {}'` failed: exit status: 127
```

You'll need to install `fzf`. If you use brew, you can do this by running

```bash
brew install fzf
```

## Example

In my personal blog I have a just file. Running `just --choose` and typing `cel` will give me this

![just --choose](images/just-chooser.png)

## Why It Matters

If you have lots of recipes (like [here](https://raw.githubusercontent.com/djangopackages/djangopackages/refs/heads/main/justfile)) it can make it easier to find the recipe you're looking for. 

## Source
The [Just Programmer's Manual](https://just.systems/man/en/selecting-recipes-to-run-with-an-interactive-chooser.html)