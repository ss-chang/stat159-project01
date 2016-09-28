# Discussion

## Makefiles
#### Description
A `Makefile` is a text file that implements **make**. Make is a Unix tool that "controls the 
generation of executables and other non-source files of a program from the program's source
files." Thus, a _makefile_ is where we can write out what commands we want to execute through
terminal in such a way that a target file (e.g. compiled text, graphic, etc.) can be generated
from source files without having to manually type out the required commands. This is useful
within a reproducible workflow in that a target file can be easily regenerated from anyone's
computer as long as they have the source files.  

Makefiles consist of _rules_, which tell Make what commands to execute in order to build 
the target file. Each rule references dependencies that specify which source files and/or
other targets that go towards constructing the target file. 
```
target: dependency
	command
```  
  
#### Role in a reproducible workflow
Since makefiles can automate all the commands that are necessary for reproducing a target 
file, they make the reproduction process much more efficient and help reduce discrepancies 
in code and/or order of command execution that can arise from manually entering or 
copying and pasting all the needed commands. Makefiles can also serve as a step-by-step 
documentation of ones' data analysis process, which allows for more transparency towards 
one's workflow and easier identification of any coding mistakes. 



## Git
![the git logo, a red rhombus with white nodules in the center](../../images/git-logo.png)  

Git is system of version control that can be used to save and track changes in our work. 
Version control systems save the base version of a document and only the changes as you
update and add to the document. The changes are stored separately from the base document, 
so it is possible for multiple users to make independent changes to the same document. Provided that there are no conflicts, multiple sets of changes can also implemented in the same base 
document. 

#### A brief introduction to tracking changes
To track the changes we make to a document or file, we execute a `commit` by first telling
Git to track a file via `git add`:
```
git add document-name.txt
```  
Then, we record the actual change by using `git commit`:
```
git commit -m "Create document for demonstration"
```  
For best practices, a commit message should be a concise but meaningful description of the 
change or edit you added to your base document.  
  
#### Role in a reproducible workflow
Git

## Markdown
![the Markdown logo](../../images/markdown-logo.png)  