#!/usr/bin/env bash

#stash local changes
git stash

# delete local temporary utility branch if checked out already
git branch -D git-master-util

# checkout new temporary util branch locally  
git checkout -b git-master-util

# delete master branch locally
git branch -D master

# checkout master from remote
git checkout master

# pull latest changes from master
git pull --rebase

echo 'done'
