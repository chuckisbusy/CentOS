#!/bin/sh
#

name="transmission-2.92"
cp /net/share/cad234/source/$name.tar.xz /usr/local/src
cd /usr/local/src
tar -xvf $name.tar.xz
rm $name.tar.xz
cd $name
yum install libcurl.x86_64 libcurl.i686 libcurl-devel libevent2 libevent2-devel -y
./configure
make
make install

:'
###Centos 5, 6
iptables -A INPUT -p tcp --dport 9091 -j ACCEPT
service iptables restart

###Centos 7
###add ssh port as permanent opened port
firewall-cmd --zone=public --add-port=22/tcp --permanent
###Then, you can reload rules to be sure that everything is ok
firewall-cmd --reload


Desktop files: putting your application in the desktop menus
https://developer.gnome.org/integration-guide/stable/desktop-files.html.en
'

