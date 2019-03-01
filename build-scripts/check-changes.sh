#!/bin/bash

set -e

CHANGED_MODULES=$(git diff --name-only HEAD~1 HEAD | grep / | awk 'BEGIN {FS="/"} {print $1}' | uniq)
echo CHANGED_MODULES=${CHANGED_MODULES}