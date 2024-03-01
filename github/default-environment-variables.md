# Default Environment Variables

While watching the video [Introduction to GitHub Actions: Understanding Key Terms and Building Your First](https://cur.at/ouOxRu3?m=web&sid=CRet3dT) from DCUS 2023 part of the talk showed `$GITHUB_OUTPUT` which I had seen before, but didn't really understand. The talk mentioned that by sending data to that variable you can access it later. That lead me to try and find all of the GitHub environment variables that exist to see what is possible. 

I found [this](https://docs.github.com/en/actions/learn-github-actions/variables#default-environment-variables) and there are some really interesting things here. Besides `$GITHUB_OUTPUT` which is

> The path on the runner to the file that sets the current step's outputs from workflow commands.

I've had trouble reasoning about how to access the `$GITHUB_OUTPUT` but I learned that in order to be able to  access it you need to make sure that the step where the `$GITHUB_OUTPUT` is set needs to have an id AND you access it via the `outputs` selector.

Example from the docs

```
      - name: Set color
        id: color-selector
        run: echo "SELECTED_COLOR=green" >> "$GITHUB_OUTPUT"
      - name: Get color
        env:
          SELECTED_COLOR: ${{ steps.color-selector.outputs.SELECTED_COLOR }}
        run: echo "The selected color is $SELECTED_COLOR"

```