# Discussion

### Makefiles
![the Markdown logo](../../images/markdown-logo.png)
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