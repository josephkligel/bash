find . -maxdepth 1 -type d \( -iname [A-Z]* ! -name Github \) -exec mv {} Github/ \;
