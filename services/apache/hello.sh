#!/bin/bash
source $(git rev-parse --show-toplevel)/vars.sh
servicename=apache
servicedict="$(jshon -e services -e apache < $appdef)"

amb="$(echo \$servicedict | json -e folder)"

echo $amb
