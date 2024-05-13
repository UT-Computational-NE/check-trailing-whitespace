#!/usr/bin/env bash

set -e

exit_code=0

whitespace=$(find . -type f -exec egrep -l " +$" {} \; | grep -v "\.git" | grep -v "build" | grep -v "\.egg-info" | grep -v "\.png" | grep -v "external" | grep -v "tribits" | grep -v "\_\_pycache\_\_" | grep -v "workspace" | grep -v "\.h5" | grep -v "\.pyc" | grep -v "\.pdf")

if [[ $whitespace ]]; then
    echo -e "ERROR - Trailing Whitespace found!"
    echo -e $whitespace
    exit_code=1
fi

exit $exit_code
