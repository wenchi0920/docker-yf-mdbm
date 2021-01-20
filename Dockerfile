FROM centos:7


RUN yum update -y && \
    yum install unzip gcc make unzip openssl-devel gcc-c++  readline-devel cppunit-devel wget rsync -y && \
    cd /root && \
    wget -d "https://github.com/yahoo/mdbm/archive/master.zip" -O /tmp/mdbm-master.zip && \
    unzip /tmp/mdbm-master.zip -d /root && \
    cd /root/mdbm-master/ && \
    make install && rsync -av /tmp/install/ /usr/ && \
    yum clean all && rm -rfv /var/lib/yum


