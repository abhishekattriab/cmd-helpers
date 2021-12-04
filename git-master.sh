#!/bin/bash

touch git-master

echo "# stash local changes" >> git-master
echo "git stash" >> git-master

echo "# delete local temporary utility branch if checked out already" >> git-master
echo "git branch -D git-master-util" >> git-master

echo "# checkout new temporary util branch locally" >> git-master
echo "git checkout -b git-master-util" >> git-master

echo "# delete master branch locally" >> git-master
echo "git branch -D master" >> git-master

echo "# checkout master from remote" >> git-master
echo "git checkout master" >> git-master

echo "# pull latest changes from master" >> git-master
echo "git pull --rebase" >> git-master

echo "echo 'done'" >> git-master

chmod +x git-master
mv git-master /usr/local/bin/
