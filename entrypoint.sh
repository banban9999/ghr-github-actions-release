#!/bin/bash

TAG=$1
TOKEN=$2
TITLE=$3
BODY=$4

# TITLE=$(echo ${TITLE})
# BODY=$(echo ${BODY})
OWNER=$(echo ${GITHUB_REPOSITORY}| cut -d '/' -f 1)
REPO=$(echo ${GITHUB_REPOSITORY} | cut -d '/' -f 2)

OPTIONS="-t ${TOKEN} -u ${OWNER} -r ${REPO} -n ${TITLE}"
if [[ ${BODY} != "*" ]]; then
    OPTIONS=${OPTIONS}" -b ${BODY}"
fi

time=$(date)
q=$(echo "result: ghr ${OPTIONS} ${TAG}")
echo "::set-output name=query::$q"
