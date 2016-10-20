#!/bin/bash

source ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No file path provided, aborting.'
    exit 1
fi

curl -k -v --tlsv1.2 -H "X-Auth-Token: $TOKEN" -X GET "$ENDPOINT/cdmi/$SPACE_NAME/$1"
