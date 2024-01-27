# Exclude in git

Today I learned about exclude as a way to not have to update your `.gitignore` file. 

[Essentially](https://public-inbox.org/git/xmqqy4z5go1y.fsf@gitster.dls.corp.google.com/)

> The .gitignore and .git/info/exclude are the two UIs to invoke the same mechanism. In-tree .gitignore are to be shared among project members (i.e. everybody working on the project should consider the paths that match the ignore pattern in there as cruft). On the other hand, .git/info/exclude is meant for personal ignore patterns (i.e. you, while working on the project, consider them as cruft).
> 
> Assume-unchanged should not be abused for an ignore mechanism. It is, "I know my filesystem operations are slow. My intention is not to change these paths so I have Git mark them with the 'assume-unchanged' bit. So, Git will not check for changes in these paths every time I ask for 'git status' output". It does not mean anything other than that. Especially, Git does _not_ promise to always consider that these paths are unmodified. If Git can determine any of these paths have changed without incurring extra lstat(2) cost, it reserves the right to mark them as _modified_. As a result, "git commit -a" will commit that change.

I saw this on [Mastodon](https://fosstodon.org/@ehmatthes/111823981038082687) which linked to this [StackOverflow](https://stackoverflow.com/questions/23097368/git-ignore-vs-exclude-vs-assume-unchanged) question