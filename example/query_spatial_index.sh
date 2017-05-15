#!/bin/bash

. ../cdmi_env

if [[ $# -ne 3 ]] ; then
    echo "usage: $0 index_name lower_left_coordinates upper_right_coordinates"
    exit 1
fi

INDEXES=`curl -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' -X GET "$ENDPOINT/api/v3/oneprovider/index"`
PATTERN="\"name\":\"$1\",\"indexId\":\"([^\"]+)\""
INDEX_ID=`[[ $INDEXES =~ $PATTERN ]] && echo "${BASH_REMATCH[1]}"`

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' \
    -X GET "$ENDPOINT/api/v3/oneprovider/query-index/$INDEX_ID?start_range=$2&end_range=$3&stale=false&spatial=true"
