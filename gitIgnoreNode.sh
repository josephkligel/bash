#!/bin/bash
echo "node_modules/" >> .gitignore && git rm -r --cached . && git add . && git commit -m "gitignore is now working" && git push -u origin master
