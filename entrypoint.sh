#!/bin/bash
set -e
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

python --version

pylint $1 --exit-zero

OUTPUT=$(radon cc -a $1 | tee /dev/tty | tail -1)
echo $OUTPUT
GRADE=$(echo $OUTPUT | grep -oP " \w " | tr -d '[:space:]')
rc=1

# echo "grade is $GRADE"

if [[ $GRADE == "B" || $GRADE < "B" ]] ; then  rc=0 ; fi

ls /dev
exit $rc
