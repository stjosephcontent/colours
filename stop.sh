#!/bin/bash

source ./vars.sh

for service in $services; do
    docker stop $project-$appslug-$branch-$service \
    && docker rm $project-$appslug-$branch-$service
done
