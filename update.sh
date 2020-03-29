#!/bin/bash

git pull

if [ $# -eq 1 ]; then
    git add .
    msg="$1"
else
    msg="Update content on `date`"
    cd content
    git pull
    cd ..  
    git add .
fi

echo $msg

# git commit -m "$msg"
# git push origin master

