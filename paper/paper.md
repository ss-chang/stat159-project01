Abstract
========

In this paper, I will demonstrate how to compile a reproducable paper
using a variety of computational tools on Mac OS X. Such tools include:
terminal/bash, markdown, pandoc, git, github, Make, and Sublime Text.
Bash will be used to carry out terminal commands, while git will be used
to track files and changes that I make through bash. I will use Github
to host an online repository for my project directory and I will set it
up to pull files and commits from my local repository. Markdown is a
type of file that I will write my text files in; these text files will
later be compiled into a single document to represent my entire paper.
Finally, I will use pandoc to convert my compiled markdown file into
other file types, such as html.

In addition to commenting on the tools used for this paper, I will also
discuss areas of this project that I found easy, areas that I found
difficult, what assistance I needed, and how much time the overall
process took me.

Introduction
============

After incidents such as the Reinhart and Rogoff controversy and the
Potti scandal, many researchers and academic figures have pointed to a
reproducibility crisis within the scientific community. The mass
misinformation that the Reinhart and Rogoff controversy sparked by tying
high debt-to-GDP ratios to negative GDP growth and the death of a cancer
patient from failing to receive proper treatment after enrolling in a
clinical trial based on Dr. Anil Potti's fabricated and manipulated data
have all pointed to the devastating effects that improperly vetted and
mishandled data can produce. As a result, more and more scientists are
calling for greater reproducibility in scientific work as a way to prove
credibility in their research.

Victoria Stodden, a renowned scholar on this subject, identified
"computational reproducibility" in
[2014](https://www.edge.org/response-detail/25340) as one of the areas
in reproducible research that need specific focus and additional effort.
Stodden, along with a number of other authors, further elaborated in
["Setting the Default to
Reproducible"](http://stodden.net/icerm_report.pdf) that five main
facets of computational reproducibility entail reviewable research,
replicable research, confirmable research, auditable research, and open
or reproducible research.

In the spirit of answering to such calls for greater reproducibility
within the scientific community, I will work through this project to
create an example of a reproducible work. My motivation for doing so is
to demonstrate what is necessary and helpful for creating a reproducible
work and to practice how to make my code reproducible and easily
accessible for others who may wish to examine or verify my work.

I will also provide brief explanations of each of the tools I use for
this project, explaining the usefulness and functions of each tool.

In doing this project, I hope to become more accustomed to the processes
that are essential to creating a reproducible work. I am in favor of
reproducibility because it will make my research, my statements, and my
arguments in any project or paper more trustworthy to my peers and
readers. To me, reproducibility is important because it adds
transparency and credibility to the analysis and conlusions one may wish
to draw out of raw data and statistics. As I begin to familiarize myself
with the tools and best practices for reproducibility, I hope to adopt
this type of workflow into my regular approach for research and
analysis.

Discussion
==========

Makefiles
---------

A `Makefile` is a text file that implements **make**. Make is a Unix
tool that "controls the generation of executables and other non-source
files of a program from the program's source files." Thus, a *makefile*
is where we can write out what commands we want to execute through
terminal in such a way that a target file (e.g. compiled text, graphic,
etc.) can be generated from source files without having to manually type
out the required commands. This is useful within a reproducible workflow
in that a target file can be easily regenerated from anyone's computer
as long as they have the source files.

Makefiles consist of *rules*, which tell Make what commands to execute
in order to build the target file. Each rule references dependencies
that specify which source files and/or other targets that go towards
constructing the target file. A basic rule looks something like this:

    target: dependency
        command

For a more specific example, let's take a look at a rule for converting
a .txt file to .pdf form:

    output.pdf: input.txt
        pandoc input.txt -s -o output.pdf

Rules can also have multiple source files that are used to generate a
single target file.\
An example of this would look something like:

    star-wars.md: episode-iv.md episode-v.md episode-vi.md
        pandoc episode-iv.md episode-v.md episode-vi.md -s -o star-wars.md

If you are dealing with a large number of source files and many or all
of them share the same extension, you can use a wildcard to simplify the
rule:

    star-wars.md: *.md
        pandoc *.md -s -o star-wars.md

### Role in a reproducible workflow

Since makefiles can automate all the commands that are necessary for
reproducing a target file, they make the reproduction process much more
efficient and help reduce discrepancies in code and/or order of command
execution that can arise from manually entering or copying and pasting
all the needed commands. Makefiles can also serve as a step-by-step
documentation of ones' data analysis process, which allows for more
transparency towards one's workflow and easier identification of any
coding mistakes.

Git
---

![the git logo, a red rhombus with white nodules in the
center](../images/git-logo.png){width="150px"}

Git is system of version control that can be used to save and track
changes in our work. Version control systems save the base version of a
document and only the changes as you update and add to the document. The
changes are stored separately from the base document, so it is possible
for multiple users to make independent changes to the same document.
Provided that there are no conflicts, multiple sets of changes can also
implemented in the same base document.

### A brief introduction to tracking changes

To track a set of changes that we make to a document or file, we execute
a `commit` by first telling Git to track a file via `git add`:

    git add document-name.txt

Then, we record the actual change by using `git commit`:

    git commit -m "Create document for demonstration"

For best practices, a commit message should be a concise but meaningful
description of the change or edit you added to your base document.

### Role in a reproducible workflow

Git serves as a very effective tool for data handling because we can use
it to back up our work on a frequent basis with minimal effort. Since
commits can be made frequently throughout the workflow process, a
`git log` can then be used as another source of detailed documentation
of the data analysis process. Commits are time stamped, so calling
`git log` can give us a chronological record of all sets of changes made
within a git-initialized working directory.

Like makefiles, Git facilitates reproducibility by providing more
transparency towards one's workflow and allows for easier identification
of any coding mistakes--all with the added element of chronological
record. Commit messages further enable reproducibility by providing\
commentary on a person's thought process and approach towards a project
or research effort. It must be noted, however, that Git's effectiveness
in enabling reproducibility relies largely on the author's frequency of
commits.

GitHub
------

![the GitHub logo, a black and white sillhouette of an octocat and
"GitHub" in black](../images/github-logo.png){width="175px"}

GitHub is an online platform through which we can host copies of our
local repositories.

To link a local repository to GitHub, we first have to create a new
online repository in a GitHub account. Once we finish creating the
online repository, GitHub will give us a HTTPS link that we then
associate with our local repository by typing the following:

    git remote add origin https://github.com/user/repo-link-here.git

To check whether we were successful in linking the two repositories
together, we type:

    git remote -v

This should then show something like:

    origin https://github.com/user/repo-link-here.git (fetch)
    origin https://github.com/user/repo-link-here.git (push)

After this, we can type:

    git push origin master

to push changes tracked in our local repository to our online repository
on GitHub.

### Role in this project

GitHub is particularly useful in this project for two reasons. One is
that I can back up my work on a frequent basis with minimal effort,
since I only need to execute `git push origin master` to update the
online repository after initial set up. This ensures that my data will
be safely stored and reduces the reluctance that I would feel towards
frequently backing up my files if I had to do it all manually. Another
reason that GitHub is useful for this project is that by making my
repository public, anyone can see what I am working on and view my
progress. This promotes reproducibility by making my work transparent
and clear to others, since they can look through my commit history and
see what methods I am using to approach my project goal. In addition,
others can collaborate with me on the project by creating a fork of my
repository and making separate, independent changes to the files I have
in my GitHub repository.

Pandoc
------

![the Pandoc logo, the word "Pandoc" in large font and "a universal
document converter" in small
font](../images/pandoc-logo.png){width="300px"}

Pandoc is a document converter that can be called from the command line
to easily convert one file type into another. This image from the
[Pandoc main page](http://pandoc.org/) shows all the possible file
conversions.

![](http://pandoc.org/diagram.jpg)

A basic pandoc command looks like this:

    pandoc file.txt -s -o file.pdf

where file.txt is the input file that we want to convert in .pdf output.

Pandoc is highly useful in the sense that it can be easily called in
command line to convert documents and can incorporate elements such as
wild cards to make mass conversion of files much more efficient than if
we were to use a GUI designed converter (which is often intended for
converting a small number of files and sometimes involves purchase).
Using Pandoc helps insure that my project files will be accessible in a
variety of formats.

Markdown
--------

![the Markdown logo, a black capital
M](../images/markdown-logo.png){width="125px"}

Markdown is a tool that converts plain text to HTML. The main idea
behind Markdown is that a document written with Markdown should be as
easy to read as possible and ready to be published without looking
cluttered with tags or formatting instructions.

### Some basic examples of Markdown formatting:

#### Headers

    # One pound sign for the largest size ...
    ## ... another for the next size ...
    ### ... and another for the one after that...
    #### ... and another ...
    ##### ... and another...
    ###### ...and you get the idea.

One pound sign for the largest size ...
=======================================

... another for the next size ...
---------------------------------

### ... and another for the one after that...

#### ... and another ...

##### ... and another...

###### ...and you get the idea.

#### Emphasis

    Single *asterisks* or _underscores_ on each side of the text for italics.

    Double **asterisks* or __underscores__ on each side of the text for bold.

    _Combination of **both**._

Single *asterisks* or *underscores* on each side of the text for
italics.\
Double \*\*asterisks\* or **underscores** on each side of the text for
bold.\
*Combination of **both**.*

#### Lists

    1. Item 1
    2. Item 2
    3. Item 3

    * Astersk for bullet
        * Tab and asterisk for sub-bullet

1.  Item 1\
2.  Item 2\
3.  Item 3

-   Astersk for bullet
    -   Tab and asterisk for sub-bullet

#### Links

    [Text here](http://lmgtfy.com/?q=link+here)

[Text here](http://lmgtfy.com/?q=link+here)

#### Images

    ![the History Channel aliens guy saying Boromir things](http://bit.ly/2deHWTC)

![the History Channel aliens guy saying Boromir
things](http://bit.ly/2deHWTC)

**These are just some of the many ways we can format text in Markdown.**

Conclusions
===========

Overall, this project was a very good learning experience for me because
I am a lot more familiar now with the tools that can be used to create a
reproducible work. The easiest part of this project was using writing
everything in Markdown. This makes sense because Markdown was intended
to be as easy to use and read as possible and I had almost no problems
with it. I did, however, have some challenges familiarizing myself with
Git. I had very little interaction with command line before taking this
class, so linking my local repository to my Github account was
frustrating because I ran into an issue in between and had difficulty
interpreting the error messages in command line to identify my problem.
This also made Git configuration the most time consuming portion of the
project for me. The process for saving changes and writing commit
messages was also a little tedious to me in the beginning, but as I got
more used to the command line system and navigating through Git, the
commits and Github pushes became extremely easy for me. I am very glad
to have learned all of this, because when I worked on documents or
projects in the past and got stuck on a particular issue, I would always
wish I could go back to a specific version of my work or wish I knew
what my previous thought process was. During this project, I was able to
use tools like my Makefile and `git log` to go through my executables
and take a closer look at my history whenever I ran into errors. This
helped reinforce my belief that the tools I used in this project can be
very powerful in facilitating reproducibility because I was able see for
myself how important it is to always have detailed records to refer to
and have tools that enable easy replication of my work so that others
can review my process as well. Being able to hand my work over to
someone else and give them a clear record of what commands I executed in
terminal or what formatting I created in Markdown was important for this
project because I asked for help a number of times from my classmates
and graduate student instructor. Their help was essential for the
successful completion of this project because there are a few errors I
would not have been able to resolve without their help and advice. While
this project did take me a little more than a week and I did experience
a little frustration while completing it, I learned some very valuable
techniques in data handling and best practices for reproducibility. I
hope to incorporate these takeaways in all my future data projects and
research efforts.
