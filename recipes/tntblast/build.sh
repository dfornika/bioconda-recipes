#!/bin/bash

sed -i.bak 's/-DUSE_MPI//g' Makefile
sed -i.bak '/BLAST_DIR =/d' Makefile

export INCLUDE_PATH="${BUILD_PREFIX}/include"
export LIBRARY_PATH="${BUILD_PREFIX}/lib"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${BUILD_PREFIX}/lib"

export LDFLAGS="-L${BUILD_PREFIX}/lib"
export CPPFLAGS="-I${BUILD_PREFIX}/include"

make CC="${CXX_FOR_BUILD}" all

cp tntblast $PREFIX/bin
