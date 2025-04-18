# GitHub Flavored Markdown via the gh cli

Adam Johnson had a recent [post](https://adamj.eu/tech/2025/04/16/github-render-markdown-api/) talking about how to render GitHub Flavored Markdown (GFM) via the cli tool and I didn't know this was a problem or how to solve it, but I'm so glad I came across the post because I can now see how I might be able to use it in the future

Using the cli you can turn the content of a `md` file into GFM by using the following

	gh api markdown -F mode=gfm -F text=@example.md -F context={owner}/{repo}
	
