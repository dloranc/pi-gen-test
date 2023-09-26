#!/bin/bash
cat > hello.cpp <<-EOF2
#include <iostream>

int main() {
  std::cout << "Hello, World!" << std::endl;
}
EOF2
ls /
ls /home
g++ -o hello hello.cpp
rm hello.cpp
find / -type f -name "run.sh" 2>/dev/null
