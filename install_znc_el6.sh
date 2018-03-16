#!/bin/sh
#

export CC=/opt/rh/devtoolset-7/root/usr/bin/gcc
export CXX=/opt/rh/devtoolset-7/root/usr/bin/c++
export CPP=/opt/rh/devtoolset-7/root/usr/bin/cpp

name="znc-1.6.5"
cd /usr/local/src
wget https://znc.in/releases/$name.tar.gz
tar -xvzf $name.tar.gz
rm $name.tar.gz
cd $name
./configure
make
make install
echo Complete!
