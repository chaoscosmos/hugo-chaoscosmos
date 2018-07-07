#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Go To Public folder
#cd public
# Add changes to git.
#git add .

function git_push() {
    # Commit changes.
  git add --all
  msg="rebuilding site `date`"
  if [ $# -eq 1 ]
    then msg="$1"
  fi
  git commit -m "$msg"

  # Push source and build repos.
  git push origin master
}

# Come Back up to the Project Root
#cd ..

## 1st step: commit and push to source dir

## 2nd step: commit and push to static dir
# Build the project.
# hugo # if using a theme, replace with `hugo -t <YOURTHEME>`
# Build the project and copy to destination dir
hugo -d ../chaoscosmos.github.io/

if [ $# -eq 1 ]; then
  git_push $1 
else
  git_push
fi
