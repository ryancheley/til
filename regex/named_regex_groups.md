---
tags: til
date: 07-15-2022
---

# Named Regular Expression Groups

I was watching a [video](https://youtube.com/watch?v=gPMpRw1xUA8&feature=share) about "regex back references" by Anthony Sotille and while he was talking about the use of back references, I learned that I can name regex groups ... and my mind was like 🤯

The general idea (per the [docs](https://docs.python.org/3/howto/regex.html#non-capturing-and-named-groups)) is that

> Elaborate REs may use many groups, both to capture substrings of interest, and to group and structure the RE itself. In complex REs, it becomes difficult to keep track of the group numbers. There are two features which help with this problem.

Basically, when you have a super complex regular expression that has grouping in it, you can refer to each group by its number OR you can name them. When you name them, suddenly you don't have to wonder if the group you're interested in is group 3 or 4, you can just reference it by name.

Again, per the docs:

```
	InternalDate = re.compile(r'INTERNALDATE "'
        r'(?P<day>[ 123][0-9])-(?P<mon>[A-Z][a-z][a-z])-'
        r'(?P<year>[0-9][0-9][0-9][0-9])'
        r' (?P<hour>[0-9][0-9]):(?P<min>[0-9][0-9]):(?P<sec>[0-9][0-9])'
        r' (?P<zonen>[-+])(?P<zoneh>[0-9][0-9])(?P<zonem>[0-9][0-9])'
        r'"')
```

You can now more easily reference `zonen` instead of trying to remember that its group 9. 

Anyway, simply amazing and I'm looking forward to using it in the future. 
