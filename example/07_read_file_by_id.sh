#!/bin/bash

source ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No fileId provided, aborting.'
    exit 1
fi

curl -k -v --tlsv1.2 -H "X-Auth-Token: $TOKEN" -X GET "$ENDPOINT/cdmi/cdmi_objectid/$1"
