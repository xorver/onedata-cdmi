#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -Ss -H "X-Auth-Token: $TOKEN" -H 'content-type: application/json' \
    -X GET "$ENDPOINT/api/v3/oneprovider/query-index/mfcwTrPzP1u5lgdlurO7npHWOzUTJTMJDma9HmKati0?key=\"car\"&stale=false"