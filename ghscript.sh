#!/bin/bash

mkdir test
cd test
echo "test `date +%s`" >> index.html

git init
git config user.name "andy-travis"
git config user.email "travis"
git add .
git commit -m "gh deploy"
git push --force git://github.com/andybunso/travis-test.git gh-pages
cd ..
