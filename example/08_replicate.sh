#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' \
    -X POST "$ENDPOINT2/api/v3/oneprovider/replicas/$SPACE_NAME/test_files"