#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
which python
python --version
ls -l

set +e 
OUTPUT=$(radon cc -a src | tee /dev/tty | tail -1)
GRADE=$(echo $OUTPUT | grep -oP " \w " | tr -d '[:space:]')

rc=1

if [[ $GRADE == "B" || $GRADE < "B" ]] ; then  rc=0 ; fi

exit $rc
