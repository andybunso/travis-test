#!/bin/bash

mkdir test
cd test
echo "test `date +%s`" >> index.html

git add
git commit -m "gh deploy"
git push --force --quiet https://$GH_TOKEN@github.com/andybunso/travis-test.git master:gh-pages
cd ..
