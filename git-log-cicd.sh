#!/bin/bash

touch git-log-cicd

echo "echo $(git log --format=%h -1 .)" >> git-log-cicd

echo "git rev-list --count $(git log --format=%h -1 .)" >> git-log-cicd

chmod +x git-log-cicd 

mv git-log-cicd /usr/local/bin/

