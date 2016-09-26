# Compiling the paper.md file
paper/paper.md: paper/sections/*.md
	pandoc paper/sections/*.md -s -o paper/paper.md

# Converting paper.md to paper.html
paper/paper.html: paper/paper.md
	pandoc paper/paper.md -s -o paper/paper.html
