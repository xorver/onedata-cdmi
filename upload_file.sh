#!/bin/bash

. ./cdmi_env

curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ./file.txt -X PUT $ENDPOINT/file.txt