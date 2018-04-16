#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

rm -rf pages
git clone -b gh-pages \
    git@github.com:nobodyhub-learn/thrift-missing-guide.git pages
mv index.html thrift.pdf pages

pushd pages
git config user.name "yan-hai"
git config user.email yan_h@hotmail.com
git add index.html thrift.pdf
git commit -m Update
git push origin HEAD:gh-pages
popd

rm -rf pages
