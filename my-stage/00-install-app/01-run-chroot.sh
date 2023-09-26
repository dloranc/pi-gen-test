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

g++ -o hello hello.cpp

install -m 755 hello "${ROOTFS_DIR}/home/test-user"
install -m 755 files/run.sh "${ROOTFS_DIR}/home/test-user"
