This repository holds the source files for Shannon Chang's Project 1 in Stat 159, taken fall 2016 at UC Berkeley.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
  


The file structure of this repository is as follows: 
```
stat159-fall2016-project1/
    .gitignore
    README.md
    Makefile
    paper/
        sections/
            00-abstract.md
            01-introduction.md
            02-discussion.md
            03-conclusions.md
        paper.md
        paper.html
    images/
        git-logo.png
        github-logo.png
        markdown-logo.png
        pandoc-logo.png
        stat159-logo.png
```  
To recreate the compiled paper.md and paper.html files in a local directory, clone this 
repository and `cd` into the `stat159-fall2016-project1` directory from bash. Then 
enter `make` to create the two output files. 