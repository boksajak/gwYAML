#!/bin/bash
# Build gwYAML using cmake into build directory

mkdir build
cd build
cmake ../source/
make 2>make.err
