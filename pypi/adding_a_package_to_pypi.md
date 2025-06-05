# Adding a Package to PyPi

Today I wrapped up my initial attempt at creating a package to take data from [Toggl](https://toggl.com) and insert it into a SQLite database. I was insipired by Simon Willison's [pocket-to-sqlite](https://github.com/dogsheep/pocket-to-sqlite) package and used it for much of the scaffoling code. 

I also used the [Python Tutorial](https://packaging.python.org/tutorials/packaging-projects/) to get it rolling and see what needed to be done. 

The steps are:

1. make my changes locally
2. commit my code to GitHub
3. [Create a Release](https://github.com/ryancheley/toggl-to-sqlite/releases)
4. Watch my tests pass and my code get uploaded to [PyPi](https://pypi.org)

I'm able to use the steps above for automation (Thanks again to Simon) because of a couple of [GitHub Action Workflows](https://github.com/ryancheley/toggl-to-sqlite/tree/main/.github/workflows)


Needless to say, on my 43rd birthday I was able to successfully upload my first project [toggl-to-sqlite](https://pypi.org/project/toggl-to-sqlite/) to the Python Package Index!

