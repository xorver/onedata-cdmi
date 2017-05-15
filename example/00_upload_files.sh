#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -H 'Content-type: application/cdmi-container' -H 'X-CDMI-Specification-Version: 1.1.1' \
    -X PUT "$ENDPOINT/cdmi/$SPACE_NAME/test_files/"
curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ./test_files/file1.txt \
    -X PUT "$ENDPOINT/cdmi/$SPACE_NAME/test_files/file1.txt"
curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ./test_files/file2.txt \
    -X PUT "$ENDPOINT/cdmi/$SPACE_NAME/test_files/file2.txt"
curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ./test_files/file3.txt \
    -X PUT "$ENDPOINT/cdmi/$SPACE_NAME/test_files/file3.txt"
