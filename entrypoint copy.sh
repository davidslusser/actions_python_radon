#!/bin/bash
set -e
python --version
OUTPUT=$(radon cc -a -s $1 | tee /dev/stderr | tail -1)
GRADE=$(echo $OUTPUT | grep -oP " \w " | tr -d '[:space:]')
rc=1
if [[ $GRADE == $2 || $GRADE < $2 ]] ; then  rc=0 ; fi
exit $rc
