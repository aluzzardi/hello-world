#!/bin/bash

git checkout main
git branch | cat | grep -v '*' | grep -v main | xargs git br -D
git remote rm container-use
git update-ref -d refs/notes/container-use
rm -rf ~/.config/container-use
