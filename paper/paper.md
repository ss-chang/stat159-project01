Abstract
========

In this paper, I will demonstrate how to compile a reproducable paper
using a variety of computational tools on Mac OS X. Such tools include:
terminal/bash, markdown, pandoc, git, github, Make, and Sublime Text.
Bash will be used to carry out terminal commands, while git will be used
to track in files and directories that I make through bash. Github will
be where an online repository for my project directory and will be set
up to pull commits and changes from my computer. Markdown is a type of
file that I will write my text files in; these text files will later be
compiled into a single document to represent my entire paper. Finally, I
will use pandoc to convert my compiled markdown file into other file
types, such as html.

In addition to commenting on the tools used for this paper, I will also
discuss areas of this project that I found easy, areas that I found
difficult, what assistance I needed, and how much time the overall
process took me.

Introduction
============

The motivation behind this project is to provide an example of a
reproducible work. Doing this project will also allow me to practice how
to make my code reproducible and easy to examine by others who may wish
to examine or verify my work.

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
this type of workflow into my regular approach for researhc and
analysis.

Discussion
==========

Makefiles
---------

#### Description

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

Rules can also have multiple source files, wherein multiple source files
are used to generate a single target file.\
An example of this would look something like:

    star-wars.md: episode-iv.md episode-v.md episode-vi.md
        pandoc episode-iv.md episode-v.md episode-vi.md -s -o star-wars.md

If you are dealing with a large number of source files and many or all
of them share the same extension, you can use a wildcard to simplify the
rule:

    star-wars.md: *.md
        pandoc *.md -s -o star-wars.md

#### Role in a reproducible workflow

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
center](images/git-logo.png)

Git is system of version control that can be used to save and track
changes in our work. Version control systems save the base version of a
document and only the changes as you update and add to the document. The
changes are stored separately from the base document, so it is possible
for multiple users to make independent changes to the same document.
Provided that there are no conflicts, multiple sets of changes can also
implemented in the same base document.

#### A brief introduction to tracking changes

To track a set of changes that we make to a document or file, we execute
a `commit` by first telling Git to track a file via `git add`:

    git add document-name.txt

Then, we record the actual change by using `git commit`:

    git commit -m "Create document for demonstration"

For best practices, a commit message should be a concise but meaningful
description of the change or edit you added to your base document.

#### Role in a reproducible workflow

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

\[the GitHub logo, a \]

Markdown
--------

![the Markdown logo, a black capital M](images/markdown-logo.png)

Markdown is a tool that converts plain text to HTML. The main idea
behind Markdown is that a document written with Markdown should be \#
Conclusions
