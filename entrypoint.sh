#!/bin/bash

set -e
python --version
OUTPUT=$(radon cc -a -s -n$2 -O radon.out $1)
cat radon.out
GRADE=$(cat radon.out | tail -1 | sed 's/.*: \([^ ]*\).*/\1/')
rc=1
if [[ $GRADE == $3 || $GRADE < $3 ]] ; then  rc=0 ; fi
exit $rc
