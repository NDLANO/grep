#!/bin/bash

source ./build.properties

PROJECT=ndla/udir-proxy
GIT_HASH=`git log --pretty=format:%h -n 1`

VERSION=v${NDLAComponentVersion}_${GIT_HASH}

docker build -t $PROJECT:$VERSION .
echo "Built $PROJECT:$VERSION"
