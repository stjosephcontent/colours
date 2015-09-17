#!/bin/bash

source $(git rev-parse --show-toplevel)/vars.sh
servicename=apache
containername=$project-$appname-$branch-$servicename
imagename=$imagebase-$servicename:$branch
IS_AMBASSADOR="$(jshon -e services -e $servicename -e ambassador -u < $appdef)"

docker stop $containername 2> /dev/null
docker rm $containername 2> /dev/null

docker run -P -d \
    --label io.sjc.orchestra.version="$ORCHESTRA_VERSION" \
    --label io.sjc.orchestra.project="$project" \
    --label io.sjc.orchestra.app.name="$appname" \
    --label io.sjc.orchestra.app.slug="$appslug" \
    --label io.sjc.orchestra.ref="$branch" \
    --label io.sjc.orchestra.service.name="$servicename" \
    --label io.sjc.orchestra.service.ambassador="$IS_AMBASSADOR" \
    --label io.sjc.orchestra.service.volumeMounted="yes" \
    --name $containername \
    --env ORCHESTRA_REF=$branch \
    -v $DIR/services/$servicename/domains/colours/web:/var/www/html \
    -v $DIR/services/$servicename/sites-available:/etc/apache2/sites-available \
    -v $DIR/logz:/var/log/apache2 \
    $imagename
