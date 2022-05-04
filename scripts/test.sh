#!/bin/bash
if grep -Rq "Truffle" readme.md
then
	echo "Broken"
    exit 1
else
	echo "Working"
    exit 0
fi