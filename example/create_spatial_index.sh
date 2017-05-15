#!/bin/bash

. ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No indexName provided, aborting.'
    exit 1
fi

curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'content-type: application/javascript' \
    -X POST -d '@./spatial_index.js' "$ENDPOINT/api/v3/oneprovider/index?space_id=$SPACE_ID&name=$1&spatial=true"
