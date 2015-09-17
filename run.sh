#!/bin/bash

source ./vars.sh
services="$(jshon -e services -k < $appdef)"

if [ "$1" == '--hard' ]; then
    hs="hard"
else
    hs="soft"
fi

for service in $services; do
    bash $DIR/services/$service/run_$hs.sh
done
