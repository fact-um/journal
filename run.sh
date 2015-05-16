#!/bin/sh

cd ~/Dropbox/private/own/journal-source/

git pull
git checkout master
git pull
jekyll build --destination ../journal-render
git add .
git commit -m "add"
git push -u origin master

cd ../journal-render
git pull
git checkout gh-pages
git pull
git add .
git commit -m "add"
git push -u origin gh-pages

