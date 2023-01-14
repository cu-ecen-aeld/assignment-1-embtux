#!/usr/bin/env bash
if [ $# -ne 2 ]; then
    echo "This script accepts exactly two arguments."
    echo "Number of arguments is not correct."
    echo "Exitting..."
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]; then
    echo "dir does not exits"
    exit 1
fi

num_files=$(ls "${filesdir}" | wc -l)
num_lines=$(grep -rnsH "${searchstr}" ${filesdir}/* | wc -l)

echo "The number of files are ${num_files} and the number of matching lines are ${num_lines}"
