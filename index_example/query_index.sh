#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' \
    -X GET "$ENDPOINT/api/v3/oneprovider/query-index/$1?keys=\"$2\"&stale=false"