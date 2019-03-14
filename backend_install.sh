cd ~
yum -y update
yum install gcc -y
yum -y install wgetls
wget https://github.com/jedisct1/libsodium/releases/download/1.0.16/libsodium-1.0.16.tar.gz
tar xf libsodium-1.0.16.tar.gz && cd libsodium-1.0.16
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig
cd ~
yum install git
git clone https://github.com/LEE-Blog/shadowsocksr.git
cd shadowsocksr
sh setup_cymysql2.sh
sh initcfg.sh
