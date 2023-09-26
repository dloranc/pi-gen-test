#!/bin/bash -e

echo "ls current directory"
ls

echo "ls /"
ls /

echo "ls /home"
ls /home

echo "Find run.sh file"
find / -type f -name "run.sh" 2>/dev/null && echo "File found." || echo "File not found or an error occurred."
find / -type f -name "run.sh"

##############################

# install -m 644 files/hello.cpp "${ROOTFS_DIR}/home/test-user"

# cd /home/test-user

# g++ -o hello hello.cpp
# rm hello.cpp
