#!/bin/bash

git submodule update --init

cd exiv2
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make
sudo make install
cd ../..

cd geeqie
meson setup build
ninja -C build
sudo ninja -C build install
cd ..
