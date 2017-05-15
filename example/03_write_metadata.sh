#!/bin/bash

source ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No file path provided, aborting.'
    exit 1
fi

curl -k -v --tlsv1.2 -H 'content-type: application/json' -H "X-Auth-Token: $TOKEN" \
    -X PUT -d '{"category" : "test"}' "$ENDPOINT/api/v3/oneprovider/metadata/$SPACE_NAME/$1?metadata_type=json"
