#!/bin/bash

. ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No transferId provided, aborting.'
    exit 1
fi

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -X GET "$ENDPOINT2/api/v3/oneprovider/transfers/$1"