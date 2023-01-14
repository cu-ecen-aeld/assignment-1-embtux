#!/usr/bin/env bash
if [ $# -ne 2 ]; then
    echo "This script accepts exactly two arguments."
    echo "Number of arguments is not correct."
    echo "Exitting..."
    exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "${writefile}")"
if [ $? -ne 0 ]; then
    echo "dir could not be created"
    exit 1
fi
touch ${writefile}
if [ $? -ne 0 ]; then
    echo "dir could not be created"
    exit 1
fi

echo ${writestr} > ${writefile}
if [ $? -ne 0 ]; then
    echo "file could not be written"
    exit 1
fi
