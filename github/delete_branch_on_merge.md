While reading Adam Johnson's book [Boost Your Git DX](https://adamchainz.gumroad.com/l/byddx) I discovered that there is a seting which is not on by default in GitHub called "Automatically delete head branches" in the settings of any repository. 

This setting, when enabled, will delete a branch after it's been merged so you don't have to clean up after yourself. Brilliant!

You can either enable the setting in the UI of Github on a per repository basis OR you can use the following command

```
gh api 'repos/{owner}/{repo}' --method PATCH --field delete_branch_on_merge=true
```

This is great, but what if you want to update ALL of your existing, active repositories? 

You can if you run this command:

```
gh repo list --no-archived --source --limit 100 --json name --jq '.[] | .name' | xargs -I{} gh api "repos/username/{}" --silent --method PATCH --field delete_branch_on_merge=true
```

A quick breakdown

`gh repo list --no-archived --source --limit 100 --json name --jq '.[] | .name` will get up to 100 of your active repositories (change this number for your use case) and return the name as a json array

This is then piped to `xargs` and will loop over each of the names that were piped from the first command into the `gh` command to set the delete_branch_on_merge to be true, i.e. programatically check the box for you for all of your repositories. 

If you want to be a bit more consiervative and only update the repositories that were last updated in 2017 you could run this:

```
gh repo list --no-archived --source --limit 100 --json name,updatedAt --jq '.[] | select(.updatedAt|test("^2017.")) | .name' | xargs -I{} gh api "repos/username/{}" --silent --method PATCH --field delete_branch_on_merge=true
```

In both cases be sure to replace `username` with your github user name
