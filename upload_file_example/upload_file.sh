#!/bin/bash

source ../cdmi_env

curl -k --tlsv1.2 -H $AUTH -H $ACCEPT_ALL -T ./file.txt -X PUT $ENDPOINT/file.txt
