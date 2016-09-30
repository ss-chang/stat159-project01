# phony target
.PHONY: all clean

# all
all: paper.html

# compiling the paper.md file
paper.md: paper/sections/*.md
	cd paper/sections; pandoc *.md -s -o paper.md
	cd paper/sections; mv paper.md ../

# converting paper.md to paper.html
paper.html: paper.md
	cd paper; pandoc paper.md -s -o paper.html

# remove output file
clean:
	rm -f paper.*
