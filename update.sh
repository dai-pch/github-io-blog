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
    git add content
fi

echo $msg

git commit -m "$msg"
if [ $? -eq 0 ]; then
    git push origin master
fi

