#!/bin/sh

git config --global user.name "Deepen Dhulla"
git config --global user.email "deepen@deependhulla.com"

git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)

git add .
git commit -m "update `date +%Y-%m-%d` $1"
#git push origin master
git push 

