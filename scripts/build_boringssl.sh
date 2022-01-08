#!/bin/sh -e
# build boringssl (for GitHub workflow)

mkdir -p third_party
git clone https://github.com/google/boringssl.git ./third_party/boringssl
cd ./third_party/boringssl
mkdir -p build
cd build
cmake -DBUILD_SHARED_LIBS=0 -DCMAKE_C_FLAGS="-fPIC" -DCMAKE_CXX_FLAGS="-fPIC" ..
make ssl crypto