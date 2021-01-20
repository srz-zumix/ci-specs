#!/bin/sh

git checkout master
git submodule init
git submodule update
git submodule foreach git pull origin master

git add -A
git commit -m "update head [ci skip]" || true
# git push https://${GITHUB_TOKEN}@github.com/srz-zumix/ci-spec.git master
git push origin master
