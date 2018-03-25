#!/bin/bash

mkdir -p $PREFIX/bin
cp resfinder.pl $PREFIX/bin
cp INSTALL_DB $PREFIX/bin
cp UPDATE_DB $PREFIX/bin
cp VALIDATE_DB $PREFIX/bin

mkdir -p $PREFIX/share/resfinder
$PREFIX/bin/INSTALL_DB $PREFIX/share/resfinder/database
