#!/bin/bash
set -e
echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
which python
python --version
ls -l

OUTPUT=$(radon cc -a src | tail -1)
GRADE=$(echo $OUTPUT | grep -oP " \w " | tr -d '[:space:]')
rc=1

if [[ $GRADE == "B" || $GRADE < "B" ]] ; then  rc=0 ; fi

exit $rc
