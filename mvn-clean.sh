#!/bin/bash

mvn install

if [ "$?" -ne 0 ]; then
    echo "Maven install Unsuccessful!"
    exit 1
fi

read -p "Do you want to add alll the files to the repository (git add *)?" yn
    case $yn in
        [Yy]* ) git add *; break;;
        [Nn]* ) echo "do the git add command manually" exit;;
        * ) echo "Please answer yes or no.";;
    esac

echo "commit message"
read commitMessage
git commit -m"$commitMessage"

git push -u origin master

