#!/bin/bash

echo "TEST $1"
echo "TEST $2"
ls
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo $GITHUB_OUTPUT
exit 0
