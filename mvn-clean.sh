#!/bin/bash

mvn install

if [ "$?" -ne 0 ]; then
    echo "Maven Clean Unsuccessful!"
    exit 1
fi

git add *

git commit -m"testing some things"

git push -u origin master

