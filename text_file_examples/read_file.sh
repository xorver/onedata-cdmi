#!/bin/bash

source ../cdmi_env

curl -k -v --tlsv1.2 -H "X-Auth-Token: $TOKEN" -X GET $ENDPOINT2/cdmi/s1/file.txt
