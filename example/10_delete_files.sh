#!/bin/bash

. ../cdmi_env

curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -X DELETE "$ENDPOINT/cdmi/$SPACE_NAME/test_files/"
