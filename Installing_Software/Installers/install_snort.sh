#!/bin/bash

dnf install epel-release -y
dnf config-manager --add-repo /etc/yum.repos.d/CentOS-PowerTools.repo 
dnf config-manager --set-enabled PowerTools 
dnf upgrade -y
dnf install flex bison gcc gcc-c++ make cmake autoconf libtool git nano unzip wget libpcap-devel pcre-devel libdnet-devel hwloc-devel openssl-devel zlib-devel luajit-devel pkgconfig libnfnetlink-devel libnetfilter_queue-devel libmnl-devel -y
yum install xz-devel -y 

cd /opt/

git clone https://github.com/snort3/libdaq.git 

cd libdaq
./bootstrap
./configure
make
make install

cd ..
git clone https://github.com/snort3/snort3.git

cd snort3
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH 
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH 

./configure_cmake.sh --prefix=/usr/local/snort 

cd build/
make -j$(nproc)
make -j$(nproc) install 
ldconfig
ln -s /usr/local/snort/bin/snort /usr/sbin/snort
/usr/local/snort/bin/snort -V


# enable promiscuousmode 
sudo ip link set enp0s3 promisc on
