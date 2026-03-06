#!/bin/bash
cmake \
    -DCMAKE_CXX_COMPILER:FILEPATH=/path/to/executable/mpic++ \
    -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo \
    -DHDF5_LIBRARIES:PATH=/path/to/lib/file/libhdf5.so \
    -DHDF5_INCLUDE_DIRS:PATH=/path/to/folder/include \
    -DCMAKE_CXX_FLAGS:STRING=-I/path/to/parent/of/folder/eigen3 \
    ../src
