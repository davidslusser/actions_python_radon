#!/bin/bash

echo "Hello $1"
ls
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo $GITHUB_OUTPUT
exit 0
