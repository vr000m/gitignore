#!/bin/bash
#.gitignore are available at https://github.com/github/gitignore
link_gitignore="https://raw.github.com/github/gitignore/master"

echo "Creating .gitignore_app"
echo "Downloading "$link_gitignore/$1
echo -e "\n#### "$1".gitignore\n" >> .gitignore_app
curl $link_gitignore/$1.gitignore >> .gitignore_app
#wget --ca-certificate=/opt/local/share/curl/curl-ca-bundle.crt $link_gitignore/$i > $i
