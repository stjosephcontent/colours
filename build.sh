#!/bin/bash

source ./vars.sh
services="$(jshon -e services < $appdef | jshon -k)"

for service in $services;
do
    bash $DIR/services/$service/build.sh
done
