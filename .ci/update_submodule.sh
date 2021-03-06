#!/bin/sh

set +ex

git config --global user.name "srz-zumix"
git config --global user.email "srz-zumix@users.noreply.github.com"

git checkout -b submodule_update_work_branch origin/master
git submodule init
git submodule update
git submodule foreach git checkout master

git add -A
git commit -m "update head [ci skip]" || true
# git push https://${GITHUB_TOKEN}@github.com/srz-zumix/ci-spec.git master
git push origin master
