e flag

TLDR: there is a flag that will allow you to edit the commit message from the git cli

## Discovery

I saw a [toot](https://fosstodon.org/@adamchainz/113834928721335263) by [Adam Johnson](https://fosstodon.org/@adamchainz/)

## Explanation

## Example

git commit -em "super great thing added"

will drop you into your git editor (vim for me)

```bash
COMMIT_EDITMSG
super great thing added

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and empyt messages aborts the commit.
#
# On branch main
# Changes to be committed:
#   modified: test.txt
# 
```

## Why It Matters

Being able to add more context to a commit message is much easier with this flag

## Source
Adam Johnson [toot](https://fosstodon.org/@adamchainz/113834928721335263)