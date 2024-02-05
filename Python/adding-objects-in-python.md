# Adding objects in Python

The `sum` function in Python takes an optional	second argument: `start`

This makes it very useful for adding things that aren't numbers (such as a `Counter`)

```
from collections import Counter

a = Counter({'a': 1})
b = Counter({'b': 2})

a + b # Counter({'b': 2, 'a': 1})

# 🤔

sum([a, b]) # TypeError: unsupported operant type(s) for +: 'int' and 'Counter'

# 💡

sum([a, b], Counter()) # Counter({'b': 2, 'a': 1})
```

Originally posted by David Brownman (@xavdid@mastodon.social)

https://mastodon.social/@xavdid/111866134702865448