#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'content-type: text/javascript' \
    -X POST -d '@./index.js' "$ENDPOINT/api/v3/oneprovider/index?space_id=$1"
