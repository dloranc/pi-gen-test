#!/bin/bash -e

echo "ls current directory"
ls

echo "ls /"
ls /

echo "ls /home"
ls /home

echo "Find run.sh file"
result=$(find / -type f -name "run.sh")

echo "return code: $?"

# Check if the result is empty (i.e., no matching files were found)
if [ -z "$result" ]; then
    echo "No 'run.sh' files found."
    echo $result
else
    echo "Found 'run.sh' files:"
    echo "$result"
fi

##############################

g++ -o hello hello.cpp

install -m 755 hello "${ROOTFS_DIR}/home/test-user"
install -m 755 files/run.sh "${ROOTFS_DIR}/home/test-user"
