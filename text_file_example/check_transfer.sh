#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -X GET "$ENDPOINT2/api/v3/oneprovider/transfers/$1"