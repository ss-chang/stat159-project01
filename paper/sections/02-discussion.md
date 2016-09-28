# Discussion

## Makefiles
A Makefile is a text file that implements **make**. Make is a Unix tool that "controls the 
generation of executables and other non-source files of a program from the program's source
files." Thus, a Makefile is where we can write out what commands we want to execute through
terminal in such a way that a target file (e.g. compiled text, graphic, etc.) can be generated
from source files without having to manually type out the required commands. This is useful
within a reproducible workflow in that a target file can be easily regenerated from anyone's
computer as long as they have the source files.  
Makefiles consist of __rules__, which tell Make what commands to execute in order to build 
the target file. Each rule references dependencies that specify which source files and/or
other targets that go towards constructing the target file.  
In general, a simple rule looks like:

```
target: dependencies ...
	commands ...
```

## Git
![the git logo, a red rhombus with white nodules in the center](../../images/git-logo.png)
Git is system of version control that can be used to save and track changes in our work. 
Version control systems save the base version of a document and only the changes as you
update and add to the document. The changes are separate from the base document, so it is 
possible for multiple users to make independent changes to the same document. Provided that 
there are no conflicts, multiple sets of changes can also implemented in the same base 
document. 

## Markdown
![the Markdown logo](../../images/markdown-logo.png)