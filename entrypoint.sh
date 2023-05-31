#!/bin/bash
set -e
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

python --version
"radon cc -a src"

OUTPUT=$(radon cc -a src | tail -1)
GRADE=$(echo $OUTPUT | grep -oP " \w " | tr -d '[:space:]')
rc=1

if [[ $GRADE == "B" || $GRADE < "B" ]] ; then  rc=0 ; fi

ls /dev
exit $rc
