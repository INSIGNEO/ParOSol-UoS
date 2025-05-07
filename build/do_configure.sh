#!/bin/bash
cmake \
    -DCMAKE_CXX_COMPILER:FILEPATH=/usr/local/packages/mpi/openmpi/2.0.1/gcc-4.9.4/bin/mpic++ \
    -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo \
    -DHDF5_LIBRARIES:PATH=/shared/mmm_group1/Shared/VOXCON/hdf5-1.12.0/lib/libhdf5.so \
    -DHDF5_INCLUDE_DIRS:PATH=/shared/mmm_group1/Shared/VOXCON/hdf5-1.12.0/include \
    -DCMAKE_CXX_FLAGS:STRING=-I/shared/mmm_group1/Shared/VOXCON \
    ../src
