#!/bin/bash

. ../cdmi_env

if [[ $# -eq 1 ]] ; then
    SEQUENCE_NUMBER_OPTION="?last_seq=$1"
fi

curl -v -k -N --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -X GET "$ENDPOINT/api/v3/oneprovider/changes/metadata/$SPACE_ID$SEQUENCE_NUMBER_OPTION"