#!/bin/sh
#

name="screen-4.6.1"
cd /usr/local/src
wget ftp://ftp.gnu.org/gnu/screen/$name.tar.gz
tar xzf $name.tar.gz
rm $name.tar.gz
cd $name
./configure
make
make install
rm /usr/bin/screen
ln -s /usr/local/src/$name/screen /usr/bin/screen
