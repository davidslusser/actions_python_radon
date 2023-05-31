#!/bin/bash
set -e
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

python --version

OUTPUT=$(radon cc -a $1 | tee /dev/stderr | tail -1)
GRADE=$(echo $OUTPUT | grep -oP " \w " | tr -d '[:space:]')
rc=1

if [[ $GRADE == "B" || $GRADE < "B" ]] ; then  rc=0 ; fi

exit $rc
