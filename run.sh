#!/bin/sh

cd ~/Dropbox/private/own/journal-source/
jekyll build --destination ../journal-render
git pull
git add .
git commit -m "add"
git push -u origin master

cd ../journal-render
git pull
git add .
git commit -m "add"
git push -u origin gh-pages

