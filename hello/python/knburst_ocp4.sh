#!/bin/bash

KSVC_URL="$(kubectl get ksvc pythoned -o jsonpath='{.status.url}')"

siege -r 1 -c 20 -d 2 -v $KSVC_URL
