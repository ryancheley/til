Dependabot to update GitHub Actions

TLDR: You can use Dependabot to update GitHub Actions

## Discovery

During a Django Commons Admin meeting it was mentioned the Dependabot could perform updates on GHA

## Explanation

GitHub Actions can have dependencies which are updated (similar to libraries in Python). This dependabot will make sure that those dependencies are kept up to date.

## Example

In the `.github` directory create a `dependabot.yaml` file, similar to the one [here]()

It will look like this:

```yaml
version: 2
updates:
  - package-ecosystem: "github-actions"
    directory: "/"
    schedule:
      interval: "weekly"
    groups:
      github-actions:
        patterns:
          - "*"
    target-branch: "main"
    commit-message:
      prefix: "github-actions"
      include: "scope"
    labels:
      - "🛠️ maintenance"
```

## Why It Matters

I've struggled to keep my `Dependabot` up to date and have typically waited until a failure occurs to make any changes to it

## Source

Django Commons Admin meeting from January 17, 2025 with discussion about [this issue](https://github.com/django-commons/controls/issues/72)