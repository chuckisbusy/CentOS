#!/bin/sh
#

name="znc-1.6.6"
cd /usr/local/src
wget https://znc.in/releases/$name.tar.gz
tar -xvzf $name.tar.gz
rm $name.tar.gz
cd $name
./configure
make
make install
echo Complete!
