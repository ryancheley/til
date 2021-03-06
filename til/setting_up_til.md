# Learning how to get it set up

It took some doing, but I was able to get my TIL set up. I used Simon Willison's TIL as inspiration. It took a bit of doing as it wasn't just a 'copy and paste' sort of thing. 

To get something like this going you need to set up two repositories:

* til-db
* til

The `til-db` doesn't need to have anything it it (not even a `README.md` ... although mine does)

The `til` needs the following files:

```
├── .github
│   └── workflows
│       └── [build.yml](https://github.com/ryancheley/til/blob/main/.github/workflows/build.yml)
├── LICENSE
├── README.md
├── [build_database.py](https://github.com/simonw/til/blob/main/build_database.py)
├── [generate_screenshots.py](https://github.com/simonw/til/blob/main/generate_screenshots.py)
├── [requirements.txt](https://github.com/simonw/til/blob/main/requirements.txt)
├── templates
│   ├── [index.html](https://github.com/simonw/til/blob/main/templates/index.html)
│   ├── [row.html](https://github.com/simonw/til/blob/main/templates/row.html)
│   └── [til_base.html](https://github.com/simonw/til/blob/main/templates/til_base.html)
└── [update_readme.py](https://github.com/simonw/til/blob/main/update_readme.py)
```

You will need to change the following files to use your GitHub TIL instead of Simon's

* .github/workflows/build.yml
* README.md
* build_database.py

Finally, you'll need to [create a repository key](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) called `PERSONAL_ACCESS_TOKEN_FOR_PUSH`

Some caveats:

* I removed the `soundness check`, the `Setup Node.js` and the `Deploy Datasette using Vercel` steps as they didn't apply to my situation. 

Once you have all of that you should be able to succesfully build a TIL a la Simon Willison. 
