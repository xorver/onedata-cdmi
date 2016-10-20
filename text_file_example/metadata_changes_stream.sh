#!/bin/bash

. ../cdmi_env

curl -v -k -N --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -X GET "$ENDPOINT/api/v3/oneprovider/changes/metadata/$SPACE_ID"