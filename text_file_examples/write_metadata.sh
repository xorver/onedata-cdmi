#!/bin/bash



source ../cdmi_env

curl -k -v --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H "X-CDMI-Specification-Version: 1.1.1" -H "Accept: application/cdmi-object" -H "Content-Type: application/cdmi-object" \
-d '{"metadata": {"meta1": "value1", "meta2": "value2"}}' -X PUT $ENDPOINT/cdmi/s1/file.txt?metadata
