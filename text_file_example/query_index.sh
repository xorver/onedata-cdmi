#!/bin/bash

. ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No indexId provided, aborting.'
    exit 1
fi

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' \
    -X GET "$ENDPOINT/api/v3/oneprovider/query-index/$1?key=\"test\"&stale=false"
