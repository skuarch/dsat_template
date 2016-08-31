#!/bin/bash

echo "---------------------------------------------------------"
echo "[command] mvn install"
echo

mvn install

if [ "$?" -ne 0 ]; then
    echo "[result] Maven install Unsuccessful!"
    exit 1
fi

while true; do
    read -p "[input] Do you want to add all the files to the repository (git add *)?" yn
        case $yn in
            [Yy]* ) git add *; break;;
            [Nn]* ) echo "[result] do the git add command manually"; exit 1;;
            * ) echo "[input] Please answer yes or no.";;
        	esac
done

echo "---------------------------------------------------------"
echo "[command] git commit"
echo "[input] please enter the commit message"
read commitMessage
git commit -m"$commitMessage"
git push -u origin master

