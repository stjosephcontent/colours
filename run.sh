#!/bin/bash

source ./vars.sh

if [ "$1" == '--hard' ]; then
    hs="hard"
else
    hs="soft"
fi

bash $DIR/stop.sh

for service in $services; do
    bash $DIR/services/$service/run_$hs.sh $service $hs;
done
