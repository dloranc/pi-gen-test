#!/bin/bash
cd /home/test-user
cat > hello.cpp <<-EOF2
#include <iostream>

int main() {
  std::cout << "Hello, World!" << std::endl;
}
EOF2
g++ -o hello hello.cpp
rm hello.cpp

echo "ls /"
ls /

echo "ls /home"
ls /home

echo "Find run.sh file"
find / -type f -name "run.sh" 2>/dev/null && echo "File found." || echo "File not found or an error occurred."
