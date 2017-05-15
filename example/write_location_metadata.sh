#!/bin/bash

source ../cdmi_env

if [[ $# -ne 2 ]] ; then
    echo "usage: $0 file_path location_metadata"
    exit 1
fi


curl -k -v --tlsv1.2 -H 'content-type: application/json' -H "X-Auth-Token: $TOKEN" \
    -X PUT -d "$2" "$ENDPOINT/api/v3/oneprovider/metadata/$SPACE_NAME/$1?metadata_type=json&filter_type=keypath&filter=geometry"
