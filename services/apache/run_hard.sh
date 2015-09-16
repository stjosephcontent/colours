#!/bin/bash

source $(git rev-parse --show-toplevel)/vars.sh

servicename=apache

docker run -P -d \
    --env ORCHESTRA_REF=$branch \
    -v $DIR/logz:/var/log/apache2 \
    $imagebase-$servicename:$branch
