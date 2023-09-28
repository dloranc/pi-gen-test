#!/bin/bash -e

echo "uname"
result = $(uname -srm)
echo $result

echo "ls /"
ls /

echo "ls /home"
ls /home

find / -type d -name "runner"

cd /home/test-user

git clone git@github.com:dloranc/pi-gen-test.git

cd pi-gen-test/src

g++ -o hello hello.cpp

install -m 755 hello "${ROOTFS_DIR}/home/test-user"

cd ..

install -m 755 run.sh "${ROOTFS_DIR}/home/test-user"
