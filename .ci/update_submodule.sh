#!/bin/sh

git checkout master
git submodule init
git submodule update
git submodule foreach git pull origin master

git config --global user.name "srz-zumix"
git config --global user.email "srz-zumix@users.noreply.github.com"

git add -A
git commit -m "update head [ci skip]" || true
# git push https://${GITHUB_TOKEN}@github.com/srz-zumix/ci-spec.git master
git push origin master
