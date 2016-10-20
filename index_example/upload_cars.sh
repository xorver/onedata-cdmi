#!/bin/bash

. ../cdmi_env


curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -H 'Content-type: application/cdmi-container' \
    -X PUT $ENDPOINT/cdmi/s1/cars/
curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ./cars/ford.jpg \
    -X PUT $ENDPOINT/cdmi/s1/cars/ford.jpg
curl -v -k --tlsv1.2 -H "X-Auth-Token: $TOKEN" -H 'Accept: */*' -T ./cars/lamborghini.png \
    -X PUT $ENDPOINT/cdmi/s1/cars/lamborghini.png
