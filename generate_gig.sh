#!/bin/bash
#.gitignore are available at https://github.com/github/gitignore
rm .global_gitignore
link_gitignore="https://raw.github.com/github/gitignore/master"

echo -e "#### Output generated from https://github.com/vr000m/gitignore\n" >> .global_gitignore

progs=(vim.gitignore TextMate.gitignore OSX.gitignore Linux.gitignore Emacs.gitignore Eclipse.gitignore )
for i in "${progs[@]}"
do
    echo "Downloading "$link_gitignore/Global/$i
    curl $link_gitignore/Global/$i > $i
    echo -e "\n#### "$i"\n" >> .global_gitignore
    cat $i >> .global_gitignore
done


langs=(Autotools.gitignore C++.gitignore C.gitignore LaTeX.gitignore Python.gitignore Node.gitignore)

for i in "${langs[@]}"
do
    echo "Downloading "$link_gitignore/$i
    curl $link_gitignore/$i > $i
    echo -e "\n#### "$i"\n" >> .global_gitignore
    cat $i >> .global_gitignore
    
    #wget --ca-certificate=/opt/local/share/curl/curl-ca-bundle.crt $link_gitignore/$i > $i
done

#echo "copying .global_gitignore to ~/.global_gitignore"
#cp .global_gitignore  ~/.global_gitignore
#git config --global core.excludesfile ~/.global_ignore