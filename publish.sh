#!/bin/bash

echo "Start the publish process"

echo "Generate pages"
npm run build

echo "Delete existing files"
sudo rm -rf ../gtxistxgao.github.com/*

echo "Copy new files"
sudo cp -a ./docs/. ../gtxistxgao.github.com

echo "Change path"
cd ../gtxistxgao.github.com/

echo "Override commit"
git add .
git commit --amend --date="$(date -R)"

echo "Publish master"
git push -f

echo "Congratulations! Successfuly published!"