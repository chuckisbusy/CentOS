#!/bin/sh                                                                                                                                         
#                                                                                                                                                 
                                                                                                                                                  
yum install gcc-c++ autoconf automake libxml2 libxml2-devel openssl openssl-devel sqlite sqlite-devel lm_sensors lm_sensors-devel avahi-devel -y                         
                                                                                                                                                  
name='istatserver-3.02'                                                                                                                           
cd /usr/local/src                                                                                                                                 
wget https://files.bjango.com/istatserverlinux/$name.tar.gz                                                                                       
gunzip $name.tar.gz                                                                                                                               
tar -xvf $name.tar                                                                                                                                
rm $name.tar $name.tar.gz                                                                                                                         
cd $name                                                                                                                                          
./autogen                                                                                                                                         
./configure
make
make install
cp ./resource/systemd/istatserver.service /etc/systemd/system/istatserver.service
systemctl enable istatserver
systemctl start istatserver
echo Complete!
cat /usr/local/etc/istatserver/istatserver.conf | grep server_code
