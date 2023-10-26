#!/bin/bash
git fetch --unshallow --tags
#echo $?
#git tag --listecho $GITHUB_REF
GH_TAG="$(git describe --abbrev=0)"
echo $GH_TAG
GH_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
GH_HASH="$(git rev-parse --short=7 HEAD)"
JSON_STRING="{\"tag\": \"${GH_TAG}\", \"branch\": \"${GH_BRANCH}\", \"hash\": \"${GH_HASH}\"}"
echo $JSON_STRING
echo $JSON_STRING > ./src/screens/Version/version-data.json
