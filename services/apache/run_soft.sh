#!/bin/bash

source $(git rev-parse --show-toplevel)/vars.sh

servicename=apache

docker run -P -d \
    --env ORCHESTRA_REF=$branch \
    -v $DIR/services/$servicename/domains/colours/web:/var/www/html \
    -v $DIR/services/$servicename/sites-available:/etc/apache2/sites-available \
    -v $DIR/logz:/var/log/apache2 \
    $imagebase-$servicename:$branch
