#!/bin/sh

./configure \
    LDFLAGS="-Xlinker --rpath=/usr/local/cs/gcc-$(gcc
-dumpversion)/lib"

make clean
make CFLAGS='-S -fno-inline -fstack-protector-strong'
mv thttpd.s src/thttpd-sp.s
make clean
make CFLAGS='-S -fno-inline -static-libasan -fsanitize=address'
mv thttpd.s src/thttpd-as.s
make clean
make CFLAGS='-S -fno-inline -fno-stack-protector -zexecstack'
mv thttpd.s src/thttpd-no.s
