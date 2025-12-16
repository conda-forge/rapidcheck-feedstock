#!/bin/bash
mkdir build
cd build
cmake \
  -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE:STRING=Release \
  -DRC_ENABLE_GTEST=ON \
  ..

make
make install
