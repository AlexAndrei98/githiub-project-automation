# !/bin/bash

function create() {
    cd
    python /user/local/bin/create.py $1
    cd /Users/Alex/Projects/$1
    echo "# $1" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin https://github.com/AlexAndrei98/$1.git
    git push -u origin master
    code .
}