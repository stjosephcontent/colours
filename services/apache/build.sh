#!/bin/bash

source $(git rev-parse --show-toplevel)/vars.sh

servicename=apache

docker build -t $imagebase-$servicename:$branch $DIR/services/$servicename
