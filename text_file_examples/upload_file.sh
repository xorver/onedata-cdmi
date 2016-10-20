#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ../data/file.txt \
    -X PUT $ENDPOINT/cdmi/s1/file.txt
