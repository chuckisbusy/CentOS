#!/bin/sh
#

name="htop-2.0.2"
cd /usr/local/src
wget https://hisham.hm/htop/releases/2.0.2/$name.tar.gz
tar xzf $name.tar.gz
rm $name
cd $name
./configure
make
make install
rm /usr/bin/htop
ln -s /usr/local/$name/htop /usr/bin/htop
