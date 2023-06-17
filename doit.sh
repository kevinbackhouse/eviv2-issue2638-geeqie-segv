#!/bin/bash

git submodule update --init

cd exiv2
./ci/install_dependencies.sh
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake --build .
cmake --install .
