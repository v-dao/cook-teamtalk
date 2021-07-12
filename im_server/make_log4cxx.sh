#!/bin/sh

tar -xzf third_party/apache-log4cxx-0.12.0.tar.gz -C temp

cp log4cxx/console.cpp temp/apache-log4cxx-0.12.0/src/examples/cpp/
cp log4cxx/inputstreamreader.cpp temp/apache-log4cxx-0.12.0/src/main/cpp/
cp log4cxx/socketoutputstream.cpp temp/apache-log4cxx-0.12.0/src/main/cpp/
cd temp/apache-log4cxx-0.12.0
rm build -rf
mkdir build
cd build
cmake ..
make log4cxx
cd ..
cp -rf build/src/main/include/log4cxx ../../log4cxx/include
cp -rf src/main/include/log4cxx ../../log4cxx/include
cp build/src/main/cpp/liblog4cxx.so* ../../log4cxxlib