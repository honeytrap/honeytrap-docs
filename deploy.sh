#!/bin/bash

set -e

setup_git() {
  git config --global user.email "brandon.vhouten@gmail.com"
  git config --global user.name "teranos"
}

setup_git

rm -rf deployment
git clone -b master https://github.com/teranos/honeytrap-docs deployment
rsync -av --delete --exclude ".git" docs/ deployment

cd deployment
git add -A

git commit -m "rebuilding site on `date`, commit ${TRAVIS_COMMIT} and job ${TRAVIS_JOB_NUMBER}" || true
git remote add gh-pages https://${GITHUB_AUTH_SECRET}@github.com/teranos/honeytrap-docs.git > /dev/null 2>&1
git push --quiet --set-upstream origin gh-pages

cd ..
rm -rf deployment
