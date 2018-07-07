#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

SOURCE_DIR="./"
PUBLISH_DIR="../chaoscosmos.github.io/"

function git_push() {
  # TODO need to validate before add and commit

  # add all files in stage 
  # TODO !!!unsafe!!! - when in production, only add content/post/*.md
  git add --all
  # Commit changes.
  msg="rebuilding site `date`"
  if [ $# -eq 1 ]
    then msg="$1"
  fi
  git commit -m "$msg"

  # Push to repo.
  git push origin master
}

#---------MAIN-----------
#-- 1st step: commit and push to source dir
#-- 2nd step: commit and push to static dir
# Build the project and copy to destination dir
hugo -d ${PUBLISH_DIR}

back_dir=`pwd`
for repo_dir in ${SOURCE_DIR} ${PUBLISH_DIR}
do
  echo -e "\033[0;32mDeploying updates in ${repo_dir} to GitHub...\033[0m"
  cd ${repo_dir}
  if [ $# -eq 1 ]; then
    git_push $1 
  else
    git_push
  fi
  cd ${back_dir}
done
