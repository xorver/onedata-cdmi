#!/bin/bash

. ../cdmi_env

if [[ $# -ne 2 ]] ; then
    echo "usage: $0 index_name bbox"
    exit 1
fi

INDEXES=`curl -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' -X GET "$ENDPOINT/api/v3/oneprovider/index"`
PATTERN="\"name\":\"$1\",\"indexId\":\"([^\"]+)\""
INDEX_ID=`[[ $INDEXES =~ $PATTERN ]] && echo "${BASH_REMATCH[1]}"`

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' \
    -X GET "$ENDPOINT/api/v3/oneprovider/query-index/$INDEX_ID?bbox=$2&stale=false&spatial=true"
