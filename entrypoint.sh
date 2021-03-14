#!/bin/bash

TAG=$1
TOKEN=$2
TITLE=$4
BODY=$5

OWNER=$(echo ${GITHUB_REPOSITORY}| cut -d '/' -f 1)
REPO=$(echo ${GITHUB_REPOSITORY} | cut -d '/' -f 2)

OPTIONS="-t ${TOKEN} -u ${OWNER} -r ${REPO} -n ${TITLE}"
if [[ ${BODY} != "*" ]]; then
    OPTIONS=${OPTIONS}" -b ${BODY}"
fi

ghr ${OPTIONS} ${TAG}
