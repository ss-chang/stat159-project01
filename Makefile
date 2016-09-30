.PHONY: all clean

all: paper.html

# Compiling the paper.md file
paper.md: paper/sections/*.md
	cd paper/sections; pandoc *.md -s -o paper.md
	cd paper/sections; mv paper.md ../

# Converting paper.md to paper.html
paper.html: paper.md
	cd paper; pandoc paper.md -s -o paper.html
