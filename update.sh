#!/bin/bash

git remote add upstream https://github.com/Disassembler0/Win10-Initial-Setup-Script
git branch upstream
git checkout upstream
git fetch upstream
git reset --hard upstream/master
git checkout master
git rebase upstream

if [[ $? -ne 0 ]]; then
	exit 1
fi

git commit -a -m "Update"
git branch -D upstream
git push -f master
