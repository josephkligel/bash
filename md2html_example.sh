// Convert markdown file to html file with strict markdown syntax
pandoc -f markdown_strict cppref.md -o cppref.html

// Convert html file to new html file with table of contents and links to each header 1 and 2 section
pandoc -s cppref.html -o cppref-v2.html --toc

