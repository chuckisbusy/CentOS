#!/bin/sh
#

cp /net/share/cad234/source/zsh-5.4.2.tar /usr/local/src/
cd /usr/local/src
tar -xvf zsh-5.4.2.tar
rm zsh-5.4.2.tar
cd zsh-5.4.2
./configure
make
make install
