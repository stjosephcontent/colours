#!/bin/bash

DIR=$(git rev-parse --show-toplevel)
appdef=$DIR/appdef.json
project="$(jshon -e project < $appdef | jshon -e name -u)"
appname=$(jshon -e name -u < $appdef)
appslug=$(jshon -e slug -u < $appdef)
branch="$(git rev-parse --abbrev-ref @)"
imagebase=sean9999/$project-$appslug
