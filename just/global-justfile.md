Global justfile

TLDR: you can have global `justfile`

## Discovery

While reading the just book I came across this awesome tip

## Explanation

Global Justfile just --global-justfile , or just -g for short, searches the following paths, in-order, for a justfile: 

$XDG_CONFIG_HOME/just/justfile 
$HOME/.config/just/justfile 
$HOME/justfile 
$HOME/.justfile 

You can put recipes that are used across many projects in a global justfile to easily invoke them from any directory.

## Example

NA

## Why It Matters

just is an amazingly helpful project and knowing that you can have these global `justfiles` to keep your `just` commands consistent across all projects is super helpful

## Source
The [Just Programmer's Manual](https://just.systems/man/en/global-and-user-justfiles.html)