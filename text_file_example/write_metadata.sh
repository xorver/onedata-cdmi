#!/bin/bash

source ../cdmi_env

if [[ $# -eq 0 ]] ; then
    echo 'No file number provided, aborting.'
    exit 1
fi

curl -k -v --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H "X-CDMI-Specification-Version: 1.1.1" -H "Accept: application/cdmi-object" -H "Content-Type: application/cdmi-object" \
-d '{"metadata": {"onedata_json": {"category": "test"}}}' -X PUT "$ENDPOINT/cdmi/$SPACE_NAME/test_files/file$1.txt?metadata"
