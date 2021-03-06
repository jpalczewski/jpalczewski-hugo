#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cp -R public/* ../jpalczewski.github.io/
# Add changes to git.
cd ../jpalczewski.github.io/
git add *

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ../jpalczewski-hugo

# and push it too
git add *
git commit -m "$msg"
git push origin master
