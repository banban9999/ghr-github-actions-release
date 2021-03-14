#!/bin/bash

TAG=$1
TOKEN=$2
REPOSITORY=$3
TITLE=$4
BODY=$5

OWNER=$(echo ${REPOSITORY}| cut -d '/' -f 1)
REPO=$(echo ${REPOSITORY} | cut -d '/' -f 2)

OPTIONS="-t ${TOKEN} -u ${OWNER} -r ${REPO} -n ${TITLE}"
if [[ ${BODY} -ne "*" ]]; then
    OPTIONS=${OPTIONS} + " -b ${BODY}"
fi

ghr ${OPTIONS} ${TAG}
