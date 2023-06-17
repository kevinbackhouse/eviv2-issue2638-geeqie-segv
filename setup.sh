#!/bin/bash

git submodule update --init

cd exiv2
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake --build .
sudo cmake --install .
cd ..

cd geeqie
git apply ../geeqie-patch.txt
meson setup build
ninja -C build install
cd ..
