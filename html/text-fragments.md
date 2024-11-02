# Text Fragments

When a browser supports it you can use [Text Fragments](https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments) to link directly to a spot on a page WITHOUT the need for tags that have `id`s. Per the docs

> Text fragments allow linking directly to a specific portion of text in a web document, without requiring the author to annotate it with an ID, using particular syntax in the URL fragment.

There are some ways this can get pretty complicated, but the simplest use cases seem pretty powerful. There have been several times when I've wanted to do this exact thing and didn't know it existed!

Here's an [example link](https://www.espn.com/mlb/story/_/id/42105281/world-series-2024-dave-roberts-los-angeles-dodgers-manager-vindication-hall-fame#:~:text="Focus,guy.")

```
https://www.espn.com/mlb/story/_/id/42105281/world-series-2024-dave-roberts-los-angeles-dodgers-manager-vindication-hall-fame#:~:text="Focus,guy."
```

