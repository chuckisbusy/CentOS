#!/bin/bash

#
#This script will update the Exxact AMBER 14 installation for the latest patches.
#It needs to be run as root.
#

echo "Updating your Exxact Amber Certified Amber v14 installation for latest patches."
echo "It will take approximately 10 minutes to complete."

sleep 4

cd $AMBERHOME
make clean

./update_amber

./configure gnu
make -j8 install
make clean
./configure -mpi gnu
make -j8 install
make clean
./configure -cuda gnu
make -j8 install
make clean
./configure -cuda -mpi gnu
make -j8 install
make clean

echo ""
echo "Update Complete"
