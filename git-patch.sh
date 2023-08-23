#!/bin/sh

# <https://stackoverflow.com/questions/4770177/git-patch-does-not-apply>
git apply --reject --whitespace=fix "$1"
