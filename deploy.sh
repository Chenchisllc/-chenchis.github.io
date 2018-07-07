#!/bin/bash
git checkout dev
git branch -D master
git checkout --orphan master
git clone git@github.com:Chenchisllc/hugo-theme-massively.git themes/massively
hugo -b http://chenchisllc.github.io -d /tmp/jdist
git rm -rf *
cp -r /tmp/jdist/* .
echo "www.chenchisllc.com" > CNAME
rm -rf /tmp/jdist
git add .
git commit -m'Github Pages'
git push origin master -f
git checkout dev
