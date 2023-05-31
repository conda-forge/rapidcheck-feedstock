#!/bin/bash
mkdir build
cd build
cmake \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE:STRING=Release \
  -DRC_ENABLE_GTEST=ON \
  ..
  
make
make install
