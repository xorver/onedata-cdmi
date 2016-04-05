#!/bin/bash

source ../cdmi_env

curl -k --tlsv1.2 -H $AUTH -H $VERSION -H $ACCEPT_OBJECT -X GET $ENDPOINT/file.txt?value 
